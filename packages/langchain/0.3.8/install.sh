conda create -n langchain python=3.12
conda activate langchain

# If you don't want to use conda, remove the above lines

mkdir -p /tmp/langchain-0.3.8
cd /tmp/langchain-0.3.8
wget https://raw.githubusercontent.com/CaiJingLong/make-py-requirements/refs/heads/main/packages/langchain/0.3.8/requirements.txt
pip install -r requirements.txt
