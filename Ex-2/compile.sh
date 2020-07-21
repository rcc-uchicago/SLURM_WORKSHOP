#!/bin/bash

module load gcc/9.2.0

gfortran -fopenmp norm_omp.f90 -o norm_prog  
