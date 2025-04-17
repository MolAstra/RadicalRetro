#!/bin/bash
fold=4
version=15
CUDA_VISIBLE_DEVICES=0

ckpt_path=tb_logs/backward_prediction/version_"${version}"/checkpoints
ckpt_from=${ckpt_path}/last.ckpt
ckpt_to="models/pure_radicals_fold${fold}.ckpt"

echo cp $ckpt_from to $ckpt_to
cp "${ckpt_from}" "${ckpt_to}"

python -m molbart.inference_score \
  --data_path "./data/radicals/radicals_fold${fold}.pkl" \
  --model_path $ckpt_to \
  --dataset_type uspto_50 \
  --task backward_prediction \
  --vocabulary_path bart_vocab_downstream.json \
  --model_type bart \
  --batch_size 64 \
  --n_beams 10 \
  --output_score_data tmp/pure_score_data_fold${fold}.csv \
  --output_sampled_smiles tmp/pure_sampled_smiles${fold}.json
