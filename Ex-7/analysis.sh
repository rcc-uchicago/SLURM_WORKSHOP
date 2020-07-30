#!/bin/bash
#SBATCH --time=00:05:00
#SBATCH --job-name=analysis
#SBATCH --output=%x-%j.out
#SBATCH --error=%x-%j.err
#SBATCH --mem=1G
#SBATCH --nodes=1

# Run a command
echo "Lots of lovely science"
echo "Cutting edge research"
echo "Algorithms"
