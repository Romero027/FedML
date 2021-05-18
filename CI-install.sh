#!/bin/bash
set -ex

echo "conda create -n fedml python=3.7.4"
conda create -n fedml python=3.7.#4
conda init bash

echo "conda activate fedml"
conda activate fedml

# Install PyTorch (please visit pytorch.org to check your version according to your physical machines
conda install pytorch==1.4.0 torchvision==0.5.0 cudatoolkit=10.1 -c pytorch

# Install MPI
conda install -c anaconda mpi4py

# Install Wandb
pip install --upgrade wandb

# Install other required package
conda install scikit-learn
conda install numpy
conda install h5py
conda install setproctitle
conda install networkx
pip install -r requirements.txt
