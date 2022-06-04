#!/bin/bash
#SBATCH --job-name=two_h_all
#SBATCH --gpus=1
#SBATCH --cpus-per-task=8   
#SBATCH --time=0-50:0
#SBATCH --mail-user=nastenckavoronowa@yandex.ru
#SBATCH --mail-type=ALL
#SBATCH --output=two_head_all.out

module load CUDA/11.4   

source activate diploma2
srun python3 train.py --img 1280 --batch 16 --epochs 200 --data data/LLVIP.yaml --weights yolov5s.pt --name two_head_all --device 0
