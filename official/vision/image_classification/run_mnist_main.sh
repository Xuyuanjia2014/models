# 要先切换到py36环境： python conda activate py36
export MODEL_DIR=/root/disk/tensorflow-model
export DATA_DIR=/root/disk/tensorflow-datasource
python3 mnist_main.py --model_dir=$MODEL_DIR  --data_dir=$DATA_DIR --train_epochs=10 --distribution_strategy=one_device --num_gpus=1 --download
