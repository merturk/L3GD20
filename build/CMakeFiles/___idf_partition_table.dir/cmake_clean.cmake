file(REMOVE_RECURSE
  "config/sdkconfig.h"
  "config/sdkconfig.cmake"
  "bootloader/bootloader.elf"
  "bootloader/bootloader.bin"
  "bootloader/bootloader.map"
  "l3d20h.bin"
  "l3d20h.map"
  "project_elf_src.c"
  "CMakeFiles/___idf_partition_table"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/___idf_partition_table.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
