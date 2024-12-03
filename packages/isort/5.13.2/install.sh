conda create -n isort python=3.12 -y
conda activate isort

# If you don't want to use conda, remove the above lines

mkdir -p /tmp/isort-5.13.2
cd /tmp/isort-5.13.2
wget https://raw.githubusercontent.com/CaiJingLong/make-py-requirements/refs/heads/main/packages/isort/5.13.2/requirements.txt
pip install -r requirements.txt
