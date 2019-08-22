#!/bin/bash
#BSUB -nnodes 1
#BSUB -q pdebug
#BSUB -G guests
#BSUB -W 59

date

rm -rf ./_tests
python3 ./driver.py 
python3 ./run.py ./

date
