#!/bin/bash

version=5
CUDA_VISIBLE_DEVICES=0

ckpt_path=tb_logs/backward_prediction/version_"${version}"/checkpoints
ckpt_from=${ckpt_path}/last.ckpt
ckpt_to="models/radicals-uspto.ckpt"

echo cp $ckpt_from to $ckpt_to
cp "${ckpt_from}" "${ckpt_to}"

python -m molbart.inference_score \
  --data_path data/seq-to-seq_datasets/uspto_50.pickle \
  --model_path $ckpt_to \
  --dataset_type uspto_50 \
  --task backward_prediction \
  --vocabulary_path bart_vocab_downstream.json \
  --model_type bart \
  --batch_size 64 \
  --n_beams 10 \
  --output_score_data tmp/uspto_score_data.csv \
  --output_sampled_smiles tmp/uspto_sampled_smiles.json
