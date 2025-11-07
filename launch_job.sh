#!/bin/bash
# SLURM batch job script 

#SBATCH -A Berzelius-2025-211
#SBATCH --job-name=pi0_train
#SBATCH --gpus=1                           # 1 GPU per task
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=48:00:00
#SBATCH -o logs/slurm-%A_%a.out                 # no logs/ folder needed
#SBATCH -e logs/slurm-%A_%a.err
#SBATCH --reservation=safe

# add printing of the job number and node
echo "Starting SLURM job $SLURM_JOB_ID, node $(hostname)"

cd /proj/rep-learning-robotics/users/x_alblo/openpi        

source setup_env.sh

echo "Training pi05_kth_pen_low_mem_finetune"
python scripts/train.py pi05_kth_pen_low_mem_finetune --exp-name=pi05_kth_pen_low_mem_finetune --overwrite
echo "Training finished!"