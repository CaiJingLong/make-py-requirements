conda create -n aisuite python=3.12.7 -y
conda activate aisuite

# If you don't want to use conda, remove the above lines

mkdir -p /tmp/aisuite-0.1.6
cd /tmp/aisuite-0.1.6
wget https://raw.githubusercontent.com/CaiJingLong/make-py-requirements/refs/heads/main/packages/aisuite/0.1.6/linux/requirements.txt
pip install -r requirements.txt
