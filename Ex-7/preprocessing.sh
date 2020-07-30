#!/bin/bash

#SBATCH --time=00:05:00
#SBATCH --mem=1G
#SBATCH --job-name=preprocessing
#SBATCH --output=%x-%j.out
#SBATCH --error=%x-%j.err
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1

# Run a command
echo “Preprocessed lots of data”
