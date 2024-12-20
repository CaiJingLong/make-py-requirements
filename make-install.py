# 查找所有的 packages 目录下的文件

import os
import platform

# 查找所有的 requirements.txt 文件
requirements_files = []
for root, dirs, files in os.walk("packages"):
    for file in files:
        if file == "requirements.txt":
            requirements_files.append(os.path.join(root, file))


def get_os_str():
    os_str = platform.system()
    if os_str == "Darwin":
        return "macos"
    if os_str == "Linux":
        return "linux"
    if os_str == "Windows":
        return "windows"
    return os_str


# make install.sh
def make_install_sh(requirements_file):
    package_name = requirements_file.split("/")[-4]
    package_version = requirements_file.split("/")[-3]
    package_os = requirements_file.split("/")[-2]

    content: str

    with open(requirements_file, "r") as f:
        content = f.readlines()

    python_version: str = ""

    for line in content:
        if line.startswith("# python"):
            python_version = line.split(" ")[2].strip()
            break

    if python_version == "":
        python_version = "3.12"

    random_dir = f"{package_name}-{package_version}"

    install_cmd = f"""conda create -n {package_name} python={python_version} -y
conda activate {package_name}

# If you don't want to use conda, remove the above lines

mkdir -p /tmp/{random_dir}
cd /tmp/{random_dir}
wget https://raw.githubusercontent.com/CaiJingLong/make-py-requirements/refs/heads/main/packages/{package_name}/{package_version}/{package_os}/requirements.txt
pip install -r requirements.txt
"""

    install_path = os.path.join(os.path.dirname(requirements_file), "install.sh")

    with open(install_path, "w") as f:
        f.write(install_cmd)


for requirements_file in requirements_files:
    print(requirements_file)
    package_name = requirements_file.split("/")[-3]
    package_version = requirements_file.split("/")[-2]
    make_install_sh(requirements_file)
