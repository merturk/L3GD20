# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# compile C with /Users/merturk/Playground/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc
C_FLAGS = -mlongcalls -Wno-frame-address -g  

C_DEFINES = -DHAVE_CONFIG_H -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\" -DUNITY_INCLUDE_CONFIG_H -DWITH_POSIX

C_INCLUDES = -I/Users/merturk/Playground/esp/esp-idf/components/esp_ringbuf/include -I/Users/merturk/Playground/esp/l3d20h/cmake-build-debug/config -I/Users/merturk/Playground/esp/esp-idf/components/newlib/platform_include -I/Users/merturk/Playground/esp/esp-idf/components/freertos/include -I/Users/merturk/Playground/esp/esp-idf/components/heap/include -I/Users/merturk/Playground/esp/esp-idf/components/log/include -I/Users/merturk/Playground/esp/esp-idf/components/soc/esp32/include -I/Users/merturk/Playground/esp/esp-idf/components/soc/include -I/Users/merturk/Playground/esp/esp-idf/components/esp_rom/include -I/Users/merturk/Playground/esp/esp-idf/components/esp_common/include -I/Users/merturk/Playground/esp/esp-idf/components/xtensa/include -I/Users/merturk/Playground/esp/esp-idf/components/xtensa/esp32/include -I/Users/merturk/Playground/esp/esp-idf/components/esp32/include -I/Users/merturk/Playground/esp/esp-idf/components/driver/include -I/Users/merturk/Playground/esp/esp-idf/components/esp_event/include -I/Users/merturk/Playground/esp/esp-idf/components/tcpip_adapter/include -I/Users/merturk/Playground/esp/esp-idf/components/lwip/include/apps -I/Users/merturk/Playground/esp/esp-idf/components/lwip/include/apps/sntp -I/Users/merturk/Playground/esp/esp-idf/components/lwip/lwip/src/include -I/Users/merturk/Playground/esp/esp-idf/components/lwip/port/esp32/include -I/Users/merturk/Playground/esp/esp-idf/components/lwip/port/esp32/include/arch -I/Users/merturk/Playground/esp/esp-idf/components/vfs/include -I/Users/merturk/Playground/esp/esp-idf/components/esp_wifi/include -I/Users/merturk/Playground/esp/esp-idf/components/esp_wifi/esp32/include -I/Users/merturk/Playground/esp/esp-idf/components/esp_eth/include -I/Users/merturk/Playground/esp/esp-idf/components/efuse/include -I/Users/merturk/Playground/esp/esp-idf/components/efuse/esp32/include -I/Users/merturk/Playground/esp/esp-idf/components/app_trace/include -I/Users/merturk/Playground/esp/esp-idf/components/mbedtls/port/include -I/Users/merturk/Playground/esp/esp-idf/components/mbedtls/mbedtls/include -I/Users/merturk/Playground/esp/esp-idf/components/wpa_supplicant/include -I/Users/merturk/Playground/esp/esp-idf/components/wpa_supplicant/port/include -I/Users/merturk/Playground/esp/esp-idf/components/wpa_supplicant/include/esp_supplicant -I/Users/merturk/Playground/esp/esp-idf/components/bootloader_support/include -I/Users/merturk/Playground/esp/esp-idf/components/app_update/include -I/Users/merturk/Playground/esp/esp-idf/components/spi_flash/include -I/Users/merturk/Playground/esp/esp-idf/components/nvs_flash/include -I/Users/merturk/Playground/esp/esp-idf/components/pthread/include -I/Users/merturk/Playground/esp/esp-idf/components/smartconfig_ack/include -I/Users/merturk/Playground/esp/esp-idf/components/espcoredump/include -I/Users/merturk/Playground/esp/esp-idf/components/asio/asio/asio/include -I/Users/merturk/Playground/esp/esp-idf/components/asio/port/include -I/Users/merturk/Playground/esp/esp-idf/components/coap/port/include -I/Users/merturk/Playground/esp/esp-idf/components/coap/port/include/coap -I/Users/merturk/Playground/esp/esp-idf/components/coap/libcoap/include -I/Users/merturk/Playground/esp/esp-idf/components/coap/libcoap/include/coap2 -I/Users/merturk/Playground/esp/esp-idf/components/console/. -I/Users/merturk/Playground/esp/esp-idf/components/nghttp/port/include -I/Users/merturk/Playground/esp/esp-idf/components/nghttp/nghttp2/lib/includes -I/Users/merturk/Playground/esp/esp-idf/components/esp-tls/. -I/Users/merturk/Playground/esp/esp-idf/components/esp_adc_cal/include -I/Users/merturk/Playground/esp/esp-idf/components/tcp_transport/include -I/Users/merturk/Playground/esp/esp-idf/components/esp_http_client/include -I/Users/merturk/Playground/esp/esp-idf/components/esp_http_server/include -I/Users/merturk/Playground/esp/esp-idf/components/esp_https_ota/include -I/Users/merturk/Playground/esp/esp-idf/components/protobuf-c/protobuf-c -I/Users/merturk/Playground/esp/esp-idf/components/protocomm/include/common -I/Users/merturk/Playground/esp/esp-idf/components/protocomm/include/security -I/Users/merturk/Playground/esp/esp-idf/components/protocomm/include/transports -I/Users/merturk/Playground/esp/esp-idf/components/mdns/include -I/Users/merturk/Playground/esp/esp-idf/components/esp_local_ctrl/include -I/Users/merturk/Playground/esp/esp-idf/components/esp_websocket_client/include -I/Users/merturk/Playground/esp/esp-idf/components/expat/expat/expat/lib -I/Users/merturk/Playground/esp/esp-idf/components/expat/port/include -I/Users/merturk/Playground/esp/esp-idf/components/wear_levelling/include -I/Users/merturk/Playground/esp/esp-idf/components/sdmmc/include -I/Users/merturk/Playground/esp/esp-idf/components/fatfs/diskio -I/Users/merturk/Playground/esp/esp-idf/components/fatfs/vfs -I/Users/merturk/Playground/esp/esp-idf/components/fatfs/src -I/Users/merturk/Playground/esp/esp-idf/components/freemodbus/common/include -I/Users/merturk/Playground/esp/esp-idf/components/idf_test/include -I/Users/merturk/Playground/esp/esp-idf/components/jsmn/include -I/Users/merturk/Playground/esp/esp-idf/components/json/cJSON -I/Users/merturk/Playground/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include -I/Users/merturk/Playground/esp/esp-idf/components/libsodium/port_include -I/Users/merturk/Playground/esp/esp-idf/components/mqtt/esp-mqtt/include -I/Users/merturk/Playground/esp/esp-idf/components/openssl/include -I/Users/merturk/Playground/esp/esp-idf/components/spiffs/include -I/Users/merturk/Playground/esp/esp-idf/components/ulp/include -I/Users/merturk/Playground/esp/esp-idf/components/unity/include -I/Users/merturk/Playground/esp/esp-idf/components/unity/unity/src -I/Users/merturk/Playground/esp/esp-idf/components/wifi_provisioning/include 
