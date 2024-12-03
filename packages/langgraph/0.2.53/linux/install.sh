conda create -n langgraph python=3.12 -y
conda activate langgraph

# If you don't want to use conda, remove the above lines

mkdir -p /tmp/langgraph-0.2.53
cd /tmp/langgraph-0.2.53
wget https://raw.githubusercontent.com/CaiJingLong/make-py-requirements/refs/heads/main/packages/langgraph/0.2.53/linux/requirements.txt
pip install -r requirements.txt
