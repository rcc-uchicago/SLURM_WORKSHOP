#!/bin/bash

#Here is a comment
#SBATCH --time=00:10:00
#SBATCH --job-name=Myjob
#SBATCH --output=Myjob_%j.out
#SBATCH --error=Myjob_%j.err
#SBATCH --partition=broadwl
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=4
#SBATCH --mem-per-cpu=2000

module load openmpi/3.1.2     
make -f Makefile

#Run your code
mpirun  ./mpi_prog 

