conda create -n open-webui python=3.11.10 -y
conda activate open-webui

# If you don't want to use conda, remove the above lines

mkdir -p /tmp/open-webui-0.4.7
cd /tmp/open-webui-0.4.7
wget https://raw.githubusercontent.com/CaiJingLong/make-py-requirements/refs/heads/main/packages/open-webui/0.4.7/linux/requirements.txt
pip install -r requirements.txt
