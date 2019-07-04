# L3GD20H - ESP-IDF I2C

A small library to manage Adafruit L3GD20H 3D Gyroscope for ESP-IDF, tested on ESP32 Dev Kit.

https://www.adafruit.com/product/1032

## Wiring

L3GD20H SCL -> ESP32 D22
L3GD20H SDA -> ESP32 D21

![Screenshot](Esp32-GyroMin.jpg)

## ESp-IDF I2C

```C

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

```