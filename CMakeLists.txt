#required lines:
cmake_minimum_required(VERSION 3.6)
project(firmware_template)

#choose one line below according to MCU you have.
include(${CMAKE_CURRENT_LIST_DIR}/cmake/STM32F407VGT/stm32f407xx.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/cmake/K1921VK01T/K1921VK01T.cmake)

#### put your CMakeLists.txt into subdirectories below.
add_subdirectory(lib/CMSIS)
add_subdirectory(mainapp)
