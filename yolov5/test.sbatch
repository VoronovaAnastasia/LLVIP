#!/bin/bash
#SBATCH --job-name=test
#SBATCH --gpus=1

module purge
module load Python/Anaconda_v10.2019

source deactivate
source activate dip
which python
python -V