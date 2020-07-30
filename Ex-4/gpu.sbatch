#!/bin/bash

#SBATCH --time=1:00:00
#SBATCH --time=00:10:00
#SBATCH --partition=gpu2
#SBATCH --gres=gpu:1
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --mem=2000
#SBATCH --job-name=MyJob
#SBATCH --output=MyJob_%j.out
#SBATCH --error=MyJob_%j.err
#SBATCH --qos=stafftest

module load cuda/10.1
make -f Makefile

./deviceQ

