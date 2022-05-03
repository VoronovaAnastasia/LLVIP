#!/bin/bash
#SBATCH --job-name=test
#SBATCH --gpus=1
#SBATCH --cpus-per-task=8   
#SBATCH --time=0-3:0
#SBATCH --mail-user=nastenckavoronowa@yandex.ru
#SBATCH --mail-type=ALL

module load CUDA/11.4   

source activate diploma
srun python3 train.py --img 1280 --batch 16 --epochs 20 --data data/LLVIP.yaml --weights yolov5s.pt --name LLVIP_export20 --device 0