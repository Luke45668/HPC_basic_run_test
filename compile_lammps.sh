#!/bin/bash -l
# execute this from the directory where you have downloaded lammps
cd lammps-2Aug2023 
rm -rf test_build 
mkdir test_build

cd test_build 

cmake  -D BUILD_MPI=no  -D PKG_EXTRA-FIX=on -D PKG_EXTRA-PAIR=on -D PKG_KSPACE=on -D PKG_MANYBODY=on -D PKG_MOLECULE=on -D PKG_RIGID=on -D PKG_SRD=on -D PKG_EXTRA-COMPUTE=on ../cmake

cmake --build . -j 4




