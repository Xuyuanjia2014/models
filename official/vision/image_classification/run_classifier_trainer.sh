# 要先切换到py36环境： python conda activate py36
# 准备数据放入：/root/tensorflow_datasets/downloads/manual
export PYTHONPATH=$PYTHONPATH:/root/models
export MODEL_DIR=/root/disk/tensorflow-model
export DATA_DIR=/root/disk/tensorflow-datasource

# 需要执行数据预处理
python -m tensorflow_datasets.scripts.download_and_prepare --datasets=imagenet2012
python3 classifier_trainer.py --mode=train_and_eval --model_type=resnet --dataset=imagenet --model_dir=$MODEL_DIR --data_dir=$DATA_DIR --config_file=configs/examples/resnet/imagenet/gpu.yaml --params_override='runtime.num_gpus=0'
