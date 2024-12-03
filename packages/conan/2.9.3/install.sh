conda create -n conan python=3.12
conda activate conan

# If you don't want to use conda, remove the above lines

mkdir -p /tmp/conan-2.9.3
cd /tmp/conan-2.9.3
wget https://raw.githubusercontent.com/CaiJingLong/make-py-requirements/refs/heads/main/packages/conan/2.9.3/requirements.txt
pip install -r requirements.txt
