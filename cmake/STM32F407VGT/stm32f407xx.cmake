
add_definitions(-DUSE_HAL_DRIVER -DSTM32F407xx)

# cpu
set(CPU "-mcpu=cortex-m4")

# fpu
set(FPU "-mfpu=fpv4-sp-d16")

# float-abi
set(FLOAT-ABI "-mfloat-abi=hard")

# mcu
set(MCU "${CPU} -mthumb ${FPU} ${FLOAT-ABI}")

set(OPT "-Og")

set(CMAKE_C_FLAGS   "${MCU} ${OPT} -Wall -fdata-sections -ffunction-sections -g -gdwarf-2" CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS "${MCU} ${OPT} -Wall -fdata-sections -ffunction-sections -g -gdwarf-2 --std=c++11" CACHE STRING "" FORCE)

set(LDSCRIPT ${CMAKE_CURRENT_LIST_DIR}/STM32F407VGTx_FLASH.ld)

set(CMAKE_EXE_LINKER_FLAGS "${MCU} -specs=nano.specs --specs=nosys.specs -lc -lm -lnosys -T${LDSCRIPT} -Wl,--gc-sections" CACHE STRING "" FORCE)

set(CMAKE_ASM_FLAGS "-x assembler-with-cpp ${MCU} ${OPT} -Wall -fdata-sections -ffunction-sections" CACHE STRING "" FORCE)