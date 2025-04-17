#!/bin/bash

fold=4
CUDA_VISIBLE_DEVICES=0 python -m molbart.fine_tune \
  --dataset uspto_50 \
  --data_path data/radicals/radicals_fold${fold}.pkl \
  --task backward_prediction \
  --n_epochs 100 \
  -lr 0.001 \
  --schedule cycle \
  --batch_size 64 \
  --acc_batches 4 \
  --augmentation_strategy all \
  -aug_prob 0.5
