# RadicalRetro

This is the original implementation of the paper RadicalRetro: A Deep Learning-Based Retrosynthesis Model for Radical Reactions.

## Setup

### Clone the repository and 

```bash
git clone git@github.com:MolAstra/RadicalRetro.git
cd RadicalRetro
```

### Create a new conda environment

```bash
mamba create -n radicalretro python=3.8
mamba activate radicalretro
```

### Install [Chemformer](https://github.com/MolecularAI/Chemformer)

### Run RadicalRetro

1. build the dataset with `build_data.ipynb`

2. run the following commands to finetune, evaluate and predict

```bash
bash finetune-backward.sh
bash eval-backward.sh
bash predict-backward.sh
```

3. Analyze the results with `results-backward.ipynb`

4. Visualize the attention weights with `attentions-backward.ipynb`

5. Compare with other models with `analysis.ipynb`

## Acknowledgements

- [MolTransformer](https://github.com/pschwllr/MolecularTransformer)
- [LocalRetro](https://github.com/kaist-amsg/LocalRetro)
- [Chemformer](https://github.com/MolecularAI/Chemformer)

## Citation

If you find this work useful, please cite it as follows:

```bibtex
@article{xuRadicalRetroDeepLearningBased2025,
  title = {{{RadicalRetro}}: {{A Deep Learning-Based Retrosynthesis Model}} for {{Radical Reactions}}},
  author = {Xu, Jiangcheng and Dong, Jun and Du, Kui and Liu, Wenwen and Peng, Jiehai and Yu, Wenbo},
  date = {2025},
  journaltitle = {Processes},
  volume = {13},
  number = {6},
  issn = {2227-9717},
  doi = {10.3390/pr13061792},
  keywords = {deep learning,drug synthesis,radical reactions,retrosynthesis}
```
