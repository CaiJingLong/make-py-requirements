conda create -n requests python=3.12 -y
conda activate requests

# If you don't want to use conda, remove the above lines

mkdir -p /tmp/requests-2.32.3
cd /tmp/requests-2.32.3
wget https://raw.githubusercontent.com/CaiJingLong/make-py-requirements/refs/heads/main/packages/requests/2.32.3/linux/requirements.txt
pip install -r requirements.txt
