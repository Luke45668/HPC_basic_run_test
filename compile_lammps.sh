#!/bin/bash -l
# execute this from the directory where you have downloaded lammps
cd lammps-2Aug2023 
rm -rf test_build 
mkdir test_build

cd test_build 

module unload mpi compilers gcc-libs 
module load beta-modules 
module load gcc-libs/10.2.0 
module load compilers/intel/2022.2 
module load mpi/intel/2019/update6/intel
module load cmake/3.27.3 

cmake  -D BUILD_MPI=yes  -D PKG_EXTRA-FIX=on -D PKG_EXTRA-PAIR=on -D PKG_KSPACE=on -D PKG_MANYBODY=on -D PKG_MOLECULE=on -D PKG_RIGID=on -D PKG_SRD=on -D PKG_EXTRA-COMPUTE=on ../cmake

cmake --build . -j 4




