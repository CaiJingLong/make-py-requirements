conda create -n langflow python=3.12.7 -y
conda activate langflow

# If you don't want to use conda, remove the above lines

mkdir -p /tmp/langflow-1.1.1
cd /tmp/langflow-1.1.1
wget https://raw.githubusercontent.com/CaiJingLong/make-py-requirements/refs/heads/main/packages/langflow/1.1.1/windows/requirements.txt
pip install -r requirements.txt
