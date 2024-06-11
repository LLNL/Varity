#!/bin/bash
#SBATCH -N 1
#SBATCH -p pbatch
#SBATCH -A asccasc
#SBATCH --mail-type=ALL
#SBATCH -t 04:00:00

date

python3 varity.py

date
