conda create -n httpie python=3.12
conda activate httpie

# If you don't want to use conda, remove the above lines

mkdir -p /tmp/httpie-3.2.4
cd /tmp/httpie-3.2.4
wget https://raw.githubusercontent.com/CaiJingLong/make-py-requirements/refs/heads/main/packages/httpie/3.2.4/requirements.txt
pip install -r requirements.txt
