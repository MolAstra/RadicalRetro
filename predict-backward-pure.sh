#!/bin/bash

set -e

fold=4

python -m molbart.predict \
  --reactants_path data/radicals/radicals_fold${fold}_test_tgt.txt \
  --products_path data/radicals/pure_radicals_fold${fold}_test_src_pred.pickle \
  --task backward_prediction \
  --model_path models/pure_radicals_fold${fold}.ckpt \
  --batch_size 64 \
  --n_beams 10

