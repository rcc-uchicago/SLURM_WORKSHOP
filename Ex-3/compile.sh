#!/bin/bash

module load openmpi/3.1.2

mpicc -o mpi_prog mpi.c
