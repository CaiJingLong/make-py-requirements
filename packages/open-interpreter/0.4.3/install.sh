conda create -n open-interpreter python=3.12 -y
conda activate open-interpreter

# If you don't want to use conda, remove the above lines

mkdir -p /tmp/open-interpreter-0.4.3
cd /tmp/open-interpreter-0.4.3
wget https://raw.githubusercontent.com/CaiJingLong/make-py-requirements/refs/heads/main/packages/open-interpreter/0.4.3/requirements.txt
pip install -r requirements.txt
