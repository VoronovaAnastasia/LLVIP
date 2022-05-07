#!/bin/bash
#SBATCH --job-name=test
#SBATCH --gpus=1
#SBATCH --cpus-per-task=8   
#SBATCH --time=0-33:0
#SBATCH --mail-user=nastenckavoronowa@yandex.ru
#SBATCH --mail-type=ALL
 
module load CUDA/11.0

source activate diploma
srun python3 train.py --img 1280 --batch 16 --epochs 200 --data data/LLVIP.yaml --weights yolov5l.pt --name LLVIP_export_model_l16 --device 0