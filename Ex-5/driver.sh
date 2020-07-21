#!/bin/bash

module load openmpi/3.1.2  
module load cuda/10.1
module load gcc/7.2.0
# Compiling the device code
nvcc -c dev.cu
#Compiling the host code
mpicc -c hostname.c

# Linking the host and device code
mpicc -o HostMap dev.o hostname.o -lcudart

#Submitting the job as batch script
sbatch mpijob.sh
