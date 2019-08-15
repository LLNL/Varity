#!/bin/bash
#BSUB -nnodes 1
#BSUB -q pbatch
#BSUB -G guests
#BSUB -W 180

date

rm -rf ./_tests
python3 ./driver.py 
python3 ./run.py ./

date
