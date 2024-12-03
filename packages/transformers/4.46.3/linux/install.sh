conda create -n transformers python=3.12 -y
conda activate transformers

# If you don't want to use conda, remove the above lines

mkdir -p /tmp/transformers-4.46.3
cd /tmp/transformers-4.46.3
wget https://raw.githubusercontent.com/CaiJingLong/make-py-requirements/refs/heads/main/packages/transformers/4.46.3/linux/requirements.txt
pip install -r requirements.txt
