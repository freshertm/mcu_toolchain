rm -rf make
MKDIR make
cd make
call cmake -G "Ninja" -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE:PATH="cmake\toolchain.cmake" -DCMAKE_VERBOSE_MAKEFILE=ON ..
call cmake --build . --target install