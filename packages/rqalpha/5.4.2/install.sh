conda create -n rqalpha python=3.12 -y
conda activate rqalpha

# If you don't want to use conda, remove the above lines

mkdir -p /tmp/rqalpha-5.4.2
cd /tmp/rqalpha-5.4.2
wget https://raw.githubusercontent.com/CaiJingLong/make-py-requirements/refs/heads/main/packages/rqalpha/5.4.2/requirements.txt
pip install -r requirements.txt