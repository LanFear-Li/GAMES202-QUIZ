#!/bin/bash
rm -rf build
mkdir build
cd build
cmake ..
make -j8
./lut-Emu-MC
./lut-Eavg-MC
# ./lut-Emu-IS
# ./lut-Eavg-IS

xdg-open GGX_E_MC_LUT.png
xdg-open GGX_Eavg_LUT.png
cd ..
