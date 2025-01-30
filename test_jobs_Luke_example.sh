#!/bin/bash -l
 
#$ -N python_hello
#$ -M luke.debono.21@ucl.ac.uk
# a = abort b = running e = finished
#$ -m abe
 
 
# Request wallclock time (format hours:minutes:seconds).
#$ -l h_rt=01:00:00
 
# Request 1 gigabyte of RAM (must be an integer followed by M G or T)
#$ -l mem=1G
 
# Request N gigabyte of TMPDIR space (default is 10 GB - remove if cluster is diskless)
#$ -l tmpfs=1G
 
#$ -wd /home/ucahlrl/Scratch/
 
 
 echo "STARTING MYRIAD JOB"
 
 start=$(date +%s)
 
 module load python3 
 
 python3 /home/ucahlrl/HPC_basic_run_test/helloworld.py


 wait
 
 sleep 30s
 
 
 end=$(date +%s)
 
 echo "ENDED MYRIAD JOB"
 
 elapsedtimesecs=$(($end-$start))
 
 echo $elapsedtimesecs
 
