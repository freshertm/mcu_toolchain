# My MCU toolchain.
This is prepared toolchain with some MCU i worked.
THere are STM32F407VGT and K1921VK01T now supported.

## Using: 
 - copy "cmake" folder to your project. 
 - use CMakeLists.txt as a template.
 - create any folder and cd to it. 
 - run to configure ```cmake -G "Ninja" -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE:PATH="cmake\toolchain.cmake" -DCMAKE_VERBOSE_MAKEFILE=ON ..```
 - run o build ```call cmake --build .```
