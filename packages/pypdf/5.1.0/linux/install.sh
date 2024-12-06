conda create -n pypdf python=3.12.7 -y
conda activate pypdf

# If you don't want to use conda, remove the above lines

mkdir -p /tmp/pypdf-5.1.0
cd /tmp/pypdf-5.1.0
wget https://raw.githubusercontent.com/CaiJingLong/make-py-requirements/refs/heads/main/packages/pypdf/5.1.0/linux/requirements.txt
pip install -r requirements.txt
