module load Miniforge3
module load buildenv-gcccuda/12.1.1-gcc12.3.0

source /proj/rep-learning-robotics/users/x_alblo/openpi/.venv/bin/activate

export OPENPI_DATA_DIR="/proj/rep-learning-robotics/users/x_alblo/openpi/.cache"
export HF_LEROBOT_HOME="/proj/rep-learning-robotics/users/x_alblo/openpi/lerobot_home/datasets"
export XLA_PYTHON_CLIENT_MEM_FRACTION="0.95"

# Set wandb profile
export WANDB_PROJECT="openpi"
export WANDB_MODE="online"  # or "offline" for offline logging
