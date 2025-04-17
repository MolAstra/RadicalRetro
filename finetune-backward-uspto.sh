#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python -m molbart.fine_tune \
  --dataset uspto_50 \
  --data_path data/seq-to-seq_datasets/uspto_50.pickle \
  --model_path models/pre-train-combinded.ckpt \
  --task backward_prediction \
  --n_epochs 100 \
  -lr 0.001 \
  --schedule cycle \
  --batch_size 64 \
  --acc_batches 4 \
  --augmentation_strategy all \
  -aug_prob 0.5

