conda create -n pipgrip python=3.12.7 -y
conda activate pipgrip

# If you don't want to use conda, remove the above lines

mkdir -p /tmp/pipgrip-0.10.14
cd /tmp/pipgrip-0.10.14
wget https://raw.githubusercontent.com/CaiJingLong/make-py-requirements/refs/heads/main/packages/pipgrip/0.10.14/windows/requirements.txt
pip install -r requirements.txt
