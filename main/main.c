#include <stdio.h>
#include <driver/i2c.h>
#include "freertos/FreeRTOS.h"

#include "freertos/task.h"
#include "driver/gpio.h"
#include "l3gd20h.h"


#define BLINK_GPIO 2


bool is_L3GD20_detected() {

    uint8_t *cmd = malloc(sizeof(uint8_t*) * 2);

    cmd[0] = GYRO_REGISTER_WHO_AM_I;
    i2c_master_write_slave(0, cmd, 1);

    uint8_t *id = malloc(sizeof(uint8_t) * 1);
    printf("Read whoami via i2c \n");
    i2c_master_read_slave(0, id, 1);

    printf("id is : %d \n", *id);

    if ((*id) != L3GD20_ID && (*id) != L3GD20H_ID)
    {
        printf("Error L3GD20 not detected \n");
        return false;
    }

    free(cmd);
    free(id);
    return true;

}

void init_L3GD20() {
    printf("init_L3GD20 via i2c \n");

    uint8_t *cmd = malloc(sizeof(uint8_t*) * 2);

    cmd[0] = GYRO_REGISTER_CTRL_REG1;
    cmd[1] = 0x00;
    i2c_master_write_slave(0, cmd, 2);


    cmd[0] = GYRO_REGISTER_CTRL_REG1;
    cmd[1] = 0x0F;
    i2c_master_write_slave(0, cmd, 2);

    cmd[0] = GYRO_REGISTER_CTRL_REG3;
    cmd[1] = 0x08;
    // Resolution 2000DP for now
    i2c_master_write_slave(0, cmd, 2);

    cmd[0] = GYRO_REGISTER_CTRL_REG4;
    cmd[1] = 0x20;
    // Resolution 2000DP for now
    i2c_master_write_slave(0, cmd, 2);

    cmd[0] = GYRO_REGISTER_CTRL_REG5;
    cmd[1] = 0x80;
    // Resolution min for now
    i2c_master_write_slave(0, cmd, 2);

    free(cmd);
}

uint8_t read_temp_data(){
    uint8_t *data = malloc(sizeof(uint8_t) * 1);
    uint8_t *cmd = malloc(sizeof(uint8_t*) * 2);
    cmd[0]  = GYRO_REGISTER_OUT_TEMP;
    i2c_master_write_slave(0, cmd, 1);
    i2c_master_read_slave(0, data, 1);
    printf("Temp:  %d  \n", data[0]);


    return *data;

}

void read_gyro_data(gyroData *data) {

    uint8_t *cmd = malloc(sizeof(uint8_t*) * 2);
    cmd[0] = GYRO_REGISTER_OUT_X_L | 0x80;
    i2c_master_write_slave(0, cmd, 1);

    uint8_t raw_data_len = 6;
    uint8_t *raw_data = malloc(sizeof(uint8_t) * raw_data_len);

    i2c_master_read_slave(0, raw_data, raw_data_len);

    uint8_t xlo = raw_data[0];
    uint8_t xhi = raw_data[1];
    uint8_t ylo = raw_data[2];
    uint8_t yhi = raw_data[3];
    uint8_t zlo = raw_data[4];
    uint8_t zhi = raw_data[5];

    int16_t x  = (int16_t)(xlo | (xhi << 8));
    int16_t y = (int16_t)(ylo | (yhi << 8));
    int16_t z = (int16_t)(zlo | (zhi << 8));


    float xx = x * GYRO_SENSITIVITY_2000DPS;
    float yy= y * GYRO_SENSITIVITY_2000DPS;
    float zz= z * GYRO_SENSITIVITY_2000DPS;

    xx *= SENSORS_DPS_TO_RADS;
    yy *= SENSORS_DPS_TO_RADS;
    zz *= SENSORS_DPS_TO_RADS;

    printf("Gyro raw x:%f,y:%f,z:%f \n", xx,yy,zz);
    data->x_raw = x;
    data->y_raw = y;
    data->z_raw = z;
    data->x = xx;
    data->y = yy;
    data->z = zz;

    free(cmd);
    free(raw_data);
}

void collect_3d_gryo_data( void * params )
{
    //   gyroData *gdata = (gyroData *) params;
    while(1)
    {
        read_gyro_data((gyroData *)params);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
}

void app_main()
{
    vTaskDelay(1000 / portTICK_PERIOD_MS);

    printf("Staring main.... \n");

    gpio_pad_select_gpio(BLINK_GPIO);
    gpio_set_direction(BLINK_GPIO, GPIO_MODE_OUTPUT);

    // Install I2C driver
    ESP_ERROR_CHECK(i2c_master_init());

    vTaskDelay(500 / portTICK_PERIOD_MS);

    // Check if L3GD20 is detected
    if (!is_L3GD20_detected()) {
        exit(EXIT_FAILURE);
    }

    init_L3GD20();


    printf("\n");


    gyroData gData;
    gData.x = 0;
    gData.y=0;
    gData.z=0;

    TaskHandle_t xHandle = NULL;
    xTaskCreate( collect_3d_gryo_data, "collect_3d_gyro_data", configMINIMAL_STACK_SIZE, (void *)&gData, tskIDLE_PRIORITY, &xHandle );
    configASSERT( xHandle );


    printf("\n .. ");
    while (1)
    {
        /* Blink off (output low) */
        printf("Turning off the LED\n");
        gpio_set_level(BLINK_GPIO, 0);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
        /* Blink on (output high) */
        printf("Turning on the LED\n");
        gpio_set_level(BLINK_GPIO, 1);
        vTaskDelay(1000 / portTICK_PERIOD_MS);


        printf("gdata from loop %f, %f, %f \n", gData.x, gData.y, gData.z);




        printf("\n");
    }

    vTaskDelete( xHandle );
}
