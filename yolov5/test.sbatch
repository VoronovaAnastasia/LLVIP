#!/bin/bash
#SBATCH --job-name=model_s
#SBATCH --gpus=1
#SBATCH --cpus-per-task=8   
#SBATCH --time=0-35:0
#SBATCH --mail-user=nastenckavoronowa@yandex.ru
#SBATCH --mail-type=ALL
#SBATCH --output=model_s.out
 
module load CUDA/11.0

source activate diploma
srun python3 train.py --img 1280 --batch 8 --epochs 200 --data data/LLVIP.yaml --weights yolov5s.pt --name model_s_2 --device 0