#!/bin/bash

# Job Name
#SBATCH --job-name=arrayjob 

# Walltime requested
#SBATCH --time=0:10:00


#Add partition
#SBATCH --partition=broadwl

# Provide index values (TASK IDs)
#SBATCH --array=1-4

# Use '%A' for array-job ID, '%J' for job ID and '%a' for task ID
#SBATCH --error=maths%A-%a.err
#SBATCH --output=maths%A-%a.out

# single core
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=2000

# Use the $SLURM_ARRAY_TASK_ID variable to provide different inputs for each job
 
input=$((SLURM_ARRAY_TASK_ID*1000+2))
echo "Running job array number: "$SLURM_ARRAY_TASK_ID "input " $input
