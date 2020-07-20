#!/bin/bash

module load openmpi
mpicc -fopenmp mp_omp.c -o mpomp
