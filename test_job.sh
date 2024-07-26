#!/bin/bash -l
 
#$ -N *INSERT_JOB_NAME*
#$ -M *INSERT_EMAIL*
# a = abort b = running e = finished
#$ -m abe
 
#$ -P Gold 
#$ -A hpc.13
 
# Request wallclock time (format hours:minutes:seconds).
#$ -l h_rt=01:00:00
 
# Request 1 gigabyte of RAM (must be an integer followed by M G or T)
#$ -l mem=1G
 
# Request N gigabyte of TMPDIR space (default is 10 GB - remove if cluster is diskless)
#$ -l tmpfs=1G
 
#$ -wd /home/*INSERT_UCL_USERNAME*/Scratch/
 
 
 echo "STARTING MYRIAD JOB"
 
 start=$(date +%s)
 
 
 
 /home/*INSERT_UCL_USERNAME*/HPC_basic_run_test/lammps-2Aug2023/test_build/lmp  -in  /home/*INSERT_UCL_USERNAME*/HPC_basic_run_test/in.srd.mixture


 wait
 
 sleep 30s
 
 
 end=$(date +%s)
 
 echo "ENDED MYRIAD JOB"
 
 elapsedtimesecs=$(($end-$start))
 
 echo $elapsedtimesecs
 
