#!/bin/bash
#SBATCH --job-name=test
#SBATCH --gpus=1
#SBATCH --cpus-per-task=8   
#SBATCH --time=0-1:0
#SBATCH --mail-user=nastenckavoronowa@yandex.ru
#SBATCH --mail-type=ALL
#SBATCH --output=two_head_val_rgb.out

module load CUDA/11.4   

source activate diploma
srun python3 val.py --data data/LLVIP.yaml --img 1280 --weights  /home/avvoronova/diploma/LLVIP/yolov5/runs/train/two_head/weights/best.pt
