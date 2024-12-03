conda create -n surya-ocr python=3.12.7 -y
conda activate surya-ocr

# If you don't want to use conda, remove the above lines

mkdir -p /tmp/surya-ocr-0.7.0
cd /tmp/surya-ocr-0.7.0
wget https://raw.githubusercontent.com/CaiJingLong/make-py-requirements/refs/heads/main/packages/surya-ocr/0.7.0/macos/requirements.txt
pip install -r requirements.txt
