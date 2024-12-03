conda create -n huggingface-hub python=3.12 -y
conda activate huggingface-hub

# If you don't want to use conda, remove the above lines

mkdir -p /tmp/huggingface-hub-0.26.2
cd /tmp/huggingface-hub-0.26.2
wget https://raw.githubusercontent.com/CaiJingLong/make-py-requirements/refs/heads/main/packages/huggingface-hub/0.26.2/linux/requirements.txt
pip install -r requirements.txt
