//
// Created by Mehmet Ali Ertürk on 2019-06-28.
//

#include "driver/i2c.h"

#define I2C_MASTER_SCL_IO 22         /*!< gpio number for I2C master clock */
#define I2C_MASTER_SDA_IO 21         /*!< gpio number for I2C master data  */

#define I2C_MASTER_FREQ_HZ 100000    /*!< I2C master clock frequency */
#define I2C_MASTER_TX_BUF_DISABLE 0  /*!< I2C master doesn't need buffer */
#define I2C_MASTER_RX_BUF_DISABLE 0  /*!< I2C master doesn't need buffer */

#define WRITE_BIT I2C_MASTER_WRITE              /*!< I2C master write */
#define READ_BIT I2C_MASTER_READ                /*!< I2C master read */

#define ACK_VAL 0x0                             /*!< I2C ack value */
#define NACK_VAL 0x1                            /*!< I2C nack value */

#define ACK_CHECK_EN 0x1                        /*!< I2C master will check ack from slave*/
#define ACK_CHECK_DIS 0x0                       /*!< I2C master will not check ack from slave */


/*=========================================================================
    I2C ADDRESS/BITS AND SETTINGS
    -----------------------------------------------------------------------*/
#define L3GD20_ADDRESS           (0x6B)        // 1101011
#define L3GD20_POLL_TIMEOUT      (100)         // Maximum number of read attempts
#define L3GD20_ID                0xD4
#define L3GD20H_ID               0xD7
#define GYRO_SENSITIVITY_250DPS  (0.00875F)    // Roughly 22/256 for fixed point match
#define GYRO_SENSITIVITY_500DPS  (0.0175F)     // Roughly 45/256
#define GYRO_SENSITIVITY_2000DPS (0.070F)      // Roughly 18/256

#define SENSORS_DPS_TO_RADS               (0.017453293F)
/*=========================================================================*/

/*=========================================================================
    REGISTERS
    -----------------------------------------------------------------------*/
typedef enum
{                                             // DEFAULT    TYPE
    GYRO_REGISTER_WHO_AM_I            = 0x0F,   // 11010100   r
    GYRO_REGISTER_CTRL_REG1           = 0x20,   // 00000111   rw
    GYRO_REGISTER_CTRL_REG2           = 0x21,   // 00000000   rw
    GYRO_REGISTER_CTRL_REG3           = 0x22,   // 00000000   rw
    GYRO_REGISTER_CTRL_REG4           = 0x23,   // 00000000   rw
    GYRO_REGISTER_CTRL_REG5           = 0x24,   // 00000000   rw
    GYRO_REGISTER_REFERENCE           = 0x25,   // 00000000   rw
    GYRO_REGISTER_OUT_TEMP            = 0x26,   //            r
    GYRO_REGISTER_STATUS_REG          = 0x27,   //            r
    GYRO_REGISTER_OUT_X_L             = 0x28,   //            r
    GYRO_REGISTER_OUT_X_H             = 0x29,   //            r
    GYRO_REGISTER_OUT_Y_L             = 0x2A,   //            r
    GYRO_REGISTER_OUT_Y_H             = 0x2B,   //            r
    GYRO_REGISTER_OUT_Z_L             = 0x2C,   //            r
    GYRO_REGISTER_OUT_Z_H             = 0x2D,   //            r
    GYRO_REGISTER_FIFO_CTRL_REG       = 0x2E,   // 00000000   rw
    GYRO_REGISTER_FIFO_SRC_REG        = 0x2F,   //            r
    GYRO_REGISTER_INT1_CFG            = 0x30,   // 00000000   rw
    GYRO_REGISTER_INT1_SRC            = 0x31,   //            r
    GYRO_REGISTER_TSH_XH              = 0x32,   // 00000000   rw
    GYRO_REGISTER_TSH_XL              = 0x33,   // 00000000   rw
    GYRO_REGISTER_TSH_YH              = 0x34,   // 00000000   rw
    GYRO_REGISTER_TSH_YL              = 0x35,   // 00000000   rw
    GYRO_REGISTER_TSH_ZH              = 0x36,   // 00000000   rw
    GYRO_REGISTER_TSH_ZL              = 0x37,   // 00000000   rw
    GYRO_REGISTER_INT1_DURATION       = 0x38    // 00000000   rw
} gyroRegisters_t;
/*=========================================================================*/

/*=========================================================================
    OPTIONAL SPEED SETTINGS
    -----------------------------------------------------------------------*/
typedef enum
{
    GYRO_RANGE_250DPS  = 250,
    GYRO_RANGE_500DPS  = 500,
    GYRO_RANGE_2000DPS = 2000
} gyroRange_t;
/*=========================================================================*/


typedef struct {
    int16_t x_raw;
    int16_t y_raw;
    int16_t z_raw;
    float x;
    float y;
    float z;
}gyroData;

/**
 * @brief i2c master initialization
 */

static esp_err_t i2c_master_init()
{
    int i2c_master_port = 0;
    i2c_config_t conf;
    conf.mode = I2C_MODE_MASTER;
    conf.sda_io_num = I2C_MASTER_SDA_IO;
    conf.sda_pullup_en = GPIO_PULLUP_ENABLE;
    conf.scl_io_num = I2C_MASTER_SCL_IO;
    conf.scl_pullup_en = GPIO_PULLUP_ENABLE;
    conf.master.clk_speed = I2C_MASTER_FREQ_HZ;
    i2c_param_config(i2c_master_port, &conf);
    return i2c_driver_install(i2c_master_port, conf.mode,
                              I2C_MASTER_RX_BUF_DISABLE,
                              I2C_MASTER_TX_BUF_DISABLE, 0);
}

static esp_err_t i2c_master_read_slave(i2c_port_t i2c_num, uint8_t *data_rd, size_t size)
{
    if (size == 0)
    {
        return ESP_OK;
    }
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, (L3GD20_ADDRESS << 1) | READ_BIT, ACK_CHECK_EN);
    if (size > 1)
    {
        i2c_master_read(cmd, data_rd, size - 1, ACK_VAL);
    }
    i2c_master_read_byte(cmd, data_rd + size - 1, NACK_VAL);
    i2c_master_stop(cmd);
    esp_err_t ret = i2c_master_cmd_begin(i2c_num, cmd, 1000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);
    return ret;
}

/**
 * @brief Test code to write esp-i2c-slave
 *        Master device write data to slave(both esp32),
 *        the data will be stored in slave buffer.
 *        We can read them out from slave buffer.
 *
 * ___________________________________________________________________
 * | start | slave_addr + wr_bit + ack | write n bytes + ack  | stop |
 * --------|---------------------------|----------------------|------|
 *
 */
static esp_err_t i2c_master_write_slave(i2c_port_t i2c_num, uint8_t *data_wr, size_t size)
{
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, (L3GD20_ADDRESS << 1) | WRITE_BIT, ACK_CHECK_EN);
    i2c_master_write(cmd, data_wr, size, ACK_CHECK_EN);
    i2c_master_stop(cmd);
    esp_err_t ret = i2c_master_cmd_begin(i2c_num, cmd, 1000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);
    return ret;
}

