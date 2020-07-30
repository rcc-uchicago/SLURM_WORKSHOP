#!/bin/bash

#SBATCH --time=00:10:00
#SBATCH --partition=broadwl
#SBATCH --mem=20G
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --array=0-4
input=(A B C D E)

echo "Hello I am doing science with "  ${input[$SLURM_ARRAY_TASK_ID]}
