#!/bin/bash

set -e
# 使用的 ckpt，其中1比较好一点
# mol -> uspto -> radical
fold=0

python -m molbart.extract_attention \
  --dataset_part test \
  --dataset_type uspto_50 \
  --data_path data/sample.pickle \
  --task backward_prediction \
  --model_path models/uspto_radicals_fold${fold}.ckpt \
  --batch_size 64 \
  --n_beams 10 \
  --products_path data/samples_src_pred.pickle \
  --attn_path data/samples_attentions.pickle
