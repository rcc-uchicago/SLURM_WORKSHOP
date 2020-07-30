#!/bin/bash

# Job Name
#SBATCH -J arrayjob 

#Partition name
#SBATCH --partition=broadwl

# Walltime requested
#SBATCH -t 0:10:00

# Provide index values (TASK IDs)
#SBATCH --array=1-4

# Use '%A' for array-job ID, '%J' for job ID and '%a' for task ID
#SBATCH -e arrayjob-%a.err
#SBATCH -o arrayjob-%a.out

# single core
#SBATCH -c 1


# Use the $SLURM_ARRAY_TASK_ID variable to provide different inputs for each job
 
echo "Running job array number: "$SLURM_ARRAY_TASK_ID
