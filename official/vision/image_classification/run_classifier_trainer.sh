# 要先切换到py36环境： python conda activate py36
export PYTHONPATH=$PYTHONPATH:/root/models
export MODEL_DIR=/root/disk/tensorflow-model
export DATA_DIR=/root/disk/tensorflow-datasource
python3 classifier_trainer.py --mode=train_and_eval --model_type=resnet --dataset=imagenet --model_dir=$MODEL_DIR --data_dir=$DATA_DIR --config_file=configs/examples/resnet/imagenet/gpu.yaml --params_override='runtime.num_gpus=0'
