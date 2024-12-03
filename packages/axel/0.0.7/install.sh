conda create -n axel python=3.12
conda activate axel

# If you don't want to use conda, remove the above lines

mkdir -p /tmp/axel-0.0.7
cd /tmp/axel-0.0.7
wget https://raw.githubusercontent.com/CaiJingLong/make-py-requirements/refs/heads/main/packages/axel/0.0.7/requirements.txt
pip install -r requirements.txt
