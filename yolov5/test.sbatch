#!/bin/bash
#SBATCH --job-name=shuffle
#SBATCH --gpus=1
#SBATCH --cpus-per-task=8   
#SBATCH --time=0-35:0
#SBATCH --mail-user=nastenckavoronowa@yandex.ru
#SBATCH --mail-type=ALL
#SBATCH --output=shuffle_full.out

module load CUDA/11.4   

source activate diploma
srun python3 train.py --img 1280 --batch 16 --epochs 160 --data data/LLVIP.yaml --weights yolov5s.pt --name shuffle_full --device 0
