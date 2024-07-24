#!/bin/bash -l
 
#$ -N *INSERT_JOB_NAME*
#$ -M *INSERT_EMAIL*
# a = abort b = running e = finished
#$ -m abe
 
#$ -P Gold 
#$ -A hpc.13
 
# Request ten minutes of wallclock time (format hours:minutes:seconds).
#$ -l h_rt=01:00:00
 
# Request 1 gigabyte of RAM (must be an integer followed by M G or T)
#$ -l mem=1G
 
# Request 15 gigabyte of TMPDIR space (default is 10 GB - remove if cluster is diskless)
#$ -l tmpfs=1G
 
# Set up the job array.  In this instance we have requested 10000 tasks
# numbered 1 to 10000.
#$ 
 
# Select the MPI parallel environment and 36 processes.
#$ -pe mpi 8
 
#$ -wd /home/*INSERT_UCL_NAME*/Scratch/
 
 
 echo "STARTING MYRIAD JOB"
 
 start=$(date +%s)
 
#  module unload mpi compilers gcc-libs 
#  module load beta-modules 
#  module load gcc-libs/10.2.0 
#  module load compilers/intel/2022.2 
#  module load mpi/intel/2019/update6/intel 
#  module load hdf/5-1.12.3-impi/intel-2022
 
 mpirun -np 8 home/*INSERT_UCL_NAME*/HPC_basic_run_test/lammps-2Aug2023/src/test_build/lmp  -in  home/*INSERT_UCL_NAME*/HPC_basic_run_test/in.srd.mixture
 
 wait
 
 sleep 30s
 
 
 end=$(date +%s)
 
 echo "ENDED MYRIAD JOB"
 
 elapsedtimesecs=$(($end-$start))
 
 echo $elapsedtimesecs
 
