#!/bin/bash

set -e

# python -m molbart.predict \
#   --reactants_path data/seq-to-seq_datasets/uspto_50_test_tgt.txt \
#   --products_path data/seq-to-seq_datasets/uspto_50_test_src_pred.pickle \
#   --task backward_prediction \
#   --model_path models/radicals-uspto.ckpt \
#   --batch_size 64 \
#   --n_beams 10

fold=4
python -m molbart.predict \
  --reactants_path data/radicals/radicals_fold${fold}_test_tgt.txt \
  --products_path data/seq-to-seq_datasets/uspto_50_fold${fold}_test_src_pred.pickle \
  --task backward_prediction \
  --model_path models/radicals-uspto.ckpt \
  --batch_size 64 \
  --n_beams 10
