
add_definitions(-DK1921VK01T)

# cpu
set(CPU "-mcpu=cortex-m4")

# fpu
set(FPU "-mfpu=fpv4-sp-d16")

# float-abi
set(FLOAT-ABI "-mfloat-abi=hard")

#-mthumb -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -mlittle-endian -fdata-sections -ffunction-sections -std=gnu11 -g3 -O0 -Wno-main

# mcu
set(MCU "${CPU} -mthumb ${FPU} ${FLOAT-ABI}")

set(OPT "-Og")

set(CMAKE_C_FLAGS   "${MCU} ${OPT} -Wall -mlittle-endian -fdata-sections -ffunction-sections -std=gnu11 -g3 -O0 -Wno-main" CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS "${MCU} ${OPT} -Wall -mlittle-endian -fdata-sections -ffunction-sections -std=gnu11 -g3 -O0 -Wno-main" CACHE STRING "" FORCE)

set(LDSCRIPT ${CMAKE_CURRENT_LIST_DIR}/K1921VK01T.ld)

set(CMAKE_EXE_LINKER_FLAGS "${MCU} -specs=nano.specs --specs=nosys.specs -lc -lgcc -L${CMAKE_CURRENT_LIST_DIR} -T${LDSCRIPT} -Wl,--gc-sections" CACHE STRING "" FORCE)

set(CMAKE_ASM_FLAGS "-x assembler-with-cpp ${MCU} ${OPT} -mlittle-endian -Wall -fdata-sections -ffunction-sections" CACHE STRING "" FORCE)