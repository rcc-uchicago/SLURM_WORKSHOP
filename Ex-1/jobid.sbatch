#!/bin/bash

# Here is a comment
#SBATCH --time=00:10:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --partition=broadwl
#SBATCH --mem-per-cpu=2000
#SBATCH --job-name=MyJob
#SBATCH --output=MyJob_%j.out
#SBATCH --error=MyJob_%j.err
#SBATCH --reservation=slurm-workshop

echo “Hello”
sleep 1m
echo "Finished"
