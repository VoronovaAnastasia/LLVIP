#!/bin/bash
#SBATCH --job-name=test
#SBATCH --gpus=1
#SBATCH --cpus-per-task=8   
#SBATCH --time=0-1:0
#SBATCH --mail-user=nastenckavoronowa@yandex.ru
#SBATCH --mail-type=ALL

module load CUDA/11.4   

source activate diploma
srun python3 val.py --data data/LLVIP.yaml --img 1280 --weights modelrgbi.pt 