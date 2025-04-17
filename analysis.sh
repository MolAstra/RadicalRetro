#!/bin/bash

set -e

fold=1

python -m molbart.predict \
  --reactants_path data/analysis/tgt.txt \
  --products_path data/analysis/src_pred.pickle \
  --task backward_prediction \
  --model_path models/uspto_radicals_fold${fold}.ckpt \
  --batch_size 128 \
  --n_beams 10

