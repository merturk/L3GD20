# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.14.5/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.14.5/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/merturk/Playground/esp/l3d20h

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/merturk/Playground/esp/l3d20h/build

# Include any dependencies generated for this target.
include CMakeFiles/l3d20h.elf.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/l3d20h.elf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/l3d20h.elf.dir/flags.make

project_elf_src.c:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/merturk/Playground/esp/l3d20h/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating project_elf_src.c"
	/usr/local/Cellar/cmake/3.14.5/bin/cmake -E touch /Users/merturk/Playground/esp/l3d20h/build/project_elf_src.c

CMakeFiles/l3d20h.elf.dir/project_elf_src.c.obj: CMakeFiles/l3d20h.elf.dir/flags.make
CMakeFiles/l3d20h.elf.dir/project_elf_src.c.obj: project_elf_src.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/merturk/Playground/esp/l3d20h/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/l3d20h.elf.dir/project_elf_src.c.obj"
	/Users/merturk/Playground/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/l3d20h.elf.dir/project_elf_src.c.obj   -c /Users/merturk/Playground/esp/l3d20h/build/project_elf_src.c

CMakeFiles/l3d20h.elf.dir/project_elf_src.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/l3d20h.elf.dir/project_elf_src.c.i"
	/Users/merturk/Playground/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/merturk/Playground/esp/l3d20h/build/project_elf_src.c > CMakeFiles/l3d20h.elf.dir/project_elf_src.c.i

CMakeFiles/l3d20h.elf.dir/project_elf_src.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/l3d20h.elf.dir/project_elf_src.c.s"
	/Users/merturk/Playground/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/merturk/Playground/esp/l3d20h/build/project_elf_src.c -o CMakeFiles/l3d20h.elf.dir/project_elf_src.c.s

# Object files for target l3d20h.elf
l3d20h_elf_OBJECTS = \
"CMakeFiles/l3d20h.elf.dir/project_elf_src.c.obj"

# External object files for target l3d20h.elf
l3d20h_elf_EXTERNAL_OBJECTS =

l3d20h.elf: CMakeFiles/l3d20h.elf.dir/project_elf_src.c.obj
l3d20h.elf: CMakeFiles/l3d20h.elf.dir/build.make
l3d20h.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
l3d20h.elf: esp-idf/driver/libdriver.a
l3d20h.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
l3d20h.elf: esp-idf/efuse/libefuse.a
l3d20h.elf: esp-idf/bootloader_support/libbootloader_support.a
l3d20h.elf: esp-idf/app_update/libapp_update.a
l3d20h.elf: esp-idf/spi_flash/libspi_flash.a
l3d20h.elf: esp-idf/nvs_flash/libnvs_flash.a
l3d20h.elf: esp-idf/esp_wifi/libesp_wifi.a
l3d20h.elf: esp-idf/esp_eth/libesp_eth.a
l3d20h.elf: esp-idf/lwip/liblwip.a
l3d20h.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
l3d20h.elf: esp-idf/esp_event/libesp_event.a
l3d20h.elf: esp-idf/pthread/libpthread.a
l3d20h.elf: esp-idf/smartconfig_ack/libsmartconfig_ack.a
l3d20h.elf: esp-idf/espcoredump/libespcoredump.a
l3d20h.elf: esp-idf/esp32/libesp32.a
l3d20h.elf: esp-idf/xtensa/libxtensa.a
l3d20h.elf: esp-idf/esp_common/libesp_common.a
l3d20h.elf: esp-idf/esp_rom/libesp_rom.a
l3d20h.elf: esp-idf/soc/libsoc.a
l3d20h.elf: esp-idf/log/liblog.a
l3d20h.elf: esp-idf/heap/libheap.a
l3d20h.elf: esp-idf/freertos/libfreertos.a
l3d20h.elf: esp-idf/vfs/libvfs.a
l3d20h.elf: esp-idf/newlib/libnewlib.a
l3d20h.elf: esp-idf/cxx/libcxx.a
l3d20h.elf: esp-idf/app_trace/libapp_trace.a
l3d20h.elf: esp-idf/asio/libasio.a
l3d20h.elf: esp-idf/coap/libcoap.a
l3d20h.elf: esp-idf/console/libconsole.a
l3d20h.elf: esp-idf/nghttp/libnghttp.a
l3d20h.elf: esp-idf/esp-tls/libesp-tls.a
l3d20h.elf: esp-idf/esp_adc_cal/libesp_adc_cal.a
l3d20h.elf: esp-idf/tcp_transport/libtcp_transport.a
l3d20h.elf: esp-idf/esp_http_client/libesp_http_client.a
l3d20h.elf: esp-idf/esp_http_server/libesp_http_server.a
l3d20h.elf: esp-idf/esp_https_ota/libesp_https_ota.a
l3d20h.elf: esp-idf/protobuf-c/libprotobuf-c.a
l3d20h.elf: esp-idf/protocomm/libprotocomm.a
l3d20h.elf: esp-idf/mdns/libmdns.a
l3d20h.elf: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
l3d20h.elf: esp-idf/esp_websocket_client/libesp_websocket_client.a
l3d20h.elf: esp-idf/expat/libexpat.a
l3d20h.elf: esp-idf/wear_levelling/libwear_levelling.a
l3d20h.elf: esp-idf/sdmmc/libsdmmc.a
l3d20h.elf: esp-idf/fatfs/libfatfs.a
l3d20h.elf: esp-idf/freemodbus/libfreemodbus.a
l3d20h.elf: esp-idf/jsmn/libjsmn.a
l3d20h.elf: esp-idf/json/libjson.a
l3d20h.elf: esp-idf/libsodium/liblibsodium.a
l3d20h.elf: esp-idf/mqtt/libmqtt.a
l3d20h.elf: esp-idf/openssl/libopenssl.a
l3d20h.elf: esp-idf/spiffs/libspiffs.a
l3d20h.elf: esp-idf/ulp/libulp.a
l3d20h.elf: esp-idf/unity/libunity.a
l3d20h.elf: esp-idf/wifi_provisioning/libwifi_provisioning.a
l3d20h.elf: esp-idf/main/libmain.a
l3d20h.elf: esp-idf/asio/libasio.a
l3d20h.elf: esp-idf/coap/libcoap.a
l3d20h.elf: esp-idf/esp_adc_cal/libesp_adc_cal.a
l3d20h.elf: esp-idf/esp_https_ota/libesp_https_ota.a
l3d20h.elf: esp-idf/esp_http_client/libesp_http_client.a
l3d20h.elf: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
l3d20h.elf: esp-idf/esp_websocket_client/libesp_websocket_client.a
l3d20h.elf: esp-idf/expat/libexpat.a
l3d20h.elf: esp-idf/fatfs/libfatfs.a
l3d20h.elf: esp-idf/wear_levelling/libwear_levelling.a
l3d20h.elf: esp-idf/sdmmc/libsdmmc.a
l3d20h.elf: esp-idf/freemodbus/libfreemodbus.a
l3d20h.elf: esp-idf/jsmn/libjsmn.a
l3d20h.elf: esp-idf/libsodium/liblibsodium.a
l3d20h.elf: esp-idf/mqtt/libmqtt.a
l3d20h.elf: esp-idf/tcp_transport/libtcp_transport.a
l3d20h.elf: esp-idf/esp-tls/libesp-tls.a
l3d20h.elf: esp-idf/openssl/libopenssl.a
l3d20h.elf: esp-idf/spiffs/libspiffs.a
l3d20h.elf: esp-idf/ulp/libulp.a
l3d20h.elf: esp-idf/unity/libunity.a
l3d20h.elf: esp-idf/wifi_provisioning/libwifi_provisioning.a
l3d20h.elf: esp-idf/protocomm/libprotocomm.a
l3d20h.elf: esp-idf/esp_http_server/libesp_http_server.a
l3d20h.elf: esp-idf/nghttp/libnghttp.a
l3d20h.elf: esp-idf/protobuf-c/libprotobuf-c.a
l3d20h.elf: esp-idf/mdns/libmdns.a
l3d20h.elf: esp-idf/console/libconsole.a
l3d20h.elf: esp-idf/json/libjson.a
l3d20h.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
l3d20h.elf: esp-idf/driver/libdriver.a
l3d20h.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
l3d20h.elf: esp-idf/efuse/libefuse.a
l3d20h.elf: esp-idf/bootloader_support/libbootloader_support.a
l3d20h.elf: esp-idf/app_update/libapp_update.a
l3d20h.elf: esp-idf/spi_flash/libspi_flash.a
l3d20h.elf: esp-idf/nvs_flash/libnvs_flash.a
l3d20h.elf: esp-idf/esp_wifi/libesp_wifi.a
l3d20h.elf: esp-idf/esp_eth/libesp_eth.a
l3d20h.elf: esp-idf/lwip/liblwip.a
l3d20h.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
l3d20h.elf: esp-idf/esp_event/libesp_event.a
l3d20h.elf: esp-idf/pthread/libpthread.a
l3d20h.elf: esp-idf/smartconfig_ack/libsmartconfig_ack.a
l3d20h.elf: esp-idf/espcoredump/libespcoredump.a
l3d20h.elf: esp-idf/esp32/libesp32.a
l3d20h.elf: esp-idf/xtensa/libxtensa.a
l3d20h.elf: esp-idf/esp_common/libesp_common.a
l3d20h.elf: esp-idf/esp_rom/libesp_rom.a
l3d20h.elf: esp-idf/soc/libsoc.a
l3d20h.elf: esp-idf/log/liblog.a
l3d20h.elf: esp-idf/heap/libheap.a
l3d20h.elf: esp-idf/freertos/libfreertos.a
l3d20h.elf: esp-idf/vfs/libvfs.a
l3d20h.elf: esp-idf/newlib/libnewlib.a
l3d20h.elf: esp-idf/cxx/libcxx.a
l3d20h.elf: esp-idf/app_trace/libapp_trace.a
l3d20h.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
l3d20h.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
l3d20h.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_wifi/lib_esp32/libcoexist.a
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_wifi/lib_esp32/libcore.a
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_wifi/lib_esp32/libespnow.a
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_wifi/lib_esp32/libmesh.a
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_wifi/lib_esp32/libnet80211.a
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_wifi/lib_esp32/libphy.a
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_wifi/lib_esp32/libpp.a
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_wifi/lib_esp32/librtc.a
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_wifi/lib_esp32/libsmartconfig.a
l3d20h.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
l3d20h.elf: esp-idf/driver/libdriver.a
l3d20h.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
l3d20h.elf: esp-idf/efuse/libefuse.a
l3d20h.elf: esp-idf/bootloader_support/libbootloader_support.a
l3d20h.elf: esp-idf/app_update/libapp_update.a
l3d20h.elf: esp-idf/spi_flash/libspi_flash.a
l3d20h.elf: esp-idf/nvs_flash/libnvs_flash.a
l3d20h.elf: esp-idf/esp_wifi/libesp_wifi.a
l3d20h.elf: esp-idf/esp_eth/libesp_eth.a
l3d20h.elf: esp-idf/lwip/liblwip.a
l3d20h.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
l3d20h.elf: esp-idf/esp_event/libesp_event.a
l3d20h.elf: esp-idf/pthread/libpthread.a
l3d20h.elf: esp-idf/smartconfig_ack/libsmartconfig_ack.a
l3d20h.elf: esp-idf/espcoredump/libespcoredump.a
l3d20h.elf: esp-idf/esp32/libesp32.a
l3d20h.elf: esp-idf/xtensa/libxtensa.a
l3d20h.elf: esp-idf/esp_common/libesp_common.a
l3d20h.elf: esp-idf/esp_rom/libesp_rom.a
l3d20h.elf: esp-idf/soc/libsoc.a
l3d20h.elf: esp-idf/log/liblog.a
l3d20h.elf: esp-idf/heap/libheap.a
l3d20h.elf: esp-idf/freertos/libfreertos.a
l3d20h.elf: esp-idf/vfs/libvfs.a
l3d20h.elf: esp-idf/newlib/libnewlib.a
l3d20h.elf: esp-idf/cxx/libcxx.a
l3d20h.elf: esp-idf/app_trace/libapp_trace.a
l3d20h.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
l3d20h.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
l3d20h.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_wifi/lib_esp32/libcoexist.a
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_wifi/lib_esp32/libcore.a
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_wifi/lib_esp32/libespnow.a
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_wifi/lib_esp32/libmesh.a
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_wifi/lib_esp32/libnet80211.a
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_wifi/lib_esp32/libphy.a
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_wifi/lib_esp32/libpp.a
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_wifi/lib_esp32/librtc.a
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_wifi/lib_esp32/libsmartconfig.a
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/xtensa/esp32/libhal.a
l3d20h.elf: esp-idf/newlib/libnewlib.a
l3d20h.elf: esp-idf/esp32/esp32_out.ld
l3d20h.elf: esp-idf/esp32/ld/esp32.project.ld
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp32/ld/esp32.peripherals.ld
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.ld
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.libgcc.ld
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.syscalls.ld
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-data.ld
l3d20h.elf: /Users/merturk/Playground/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-funcs.ld
l3d20h.elf: CMakeFiles/l3d20h.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/merturk/Playground/esp/l3d20h/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable l3d20h.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/l3d20h.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/l3d20h.elf.dir/build: l3d20h.elf

.PHONY : CMakeFiles/l3d20h.elf.dir/build

CMakeFiles/l3d20h.elf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/l3d20h.elf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/l3d20h.elf.dir/clean

CMakeFiles/l3d20h.elf.dir/depend: project_elf_src.c
	cd /Users/merturk/Playground/esp/l3d20h/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/merturk/Playground/esp/l3d20h /Users/merturk/Playground/esp/l3d20h /Users/merturk/Playground/esp/l3d20h/build /Users/merturk/Playground/esp/l3d20h/build /Users/merturk/Playground/esp/l3d20h/build/CMakeFiles/l3d20h.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/l3d20h.elf.dir/depend

