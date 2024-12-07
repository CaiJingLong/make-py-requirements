conda create -n pyside6 python=3.12.7 -y
conda activate pyside6

# If you don't want to use conda, remove the above lines

mkdir -p /tmp/pyside6-6.8.1
cd /tmp/pyside6-6.8.1
wget https://raw.githubusercontent.com/CaiJingLong/make-py-requirements/refs/heads/main/packages/pyside6/6.8.1/windows/requirements.txt
pip install -r requirements.txt
