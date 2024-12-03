# 读取参数
import os
import platform
import sys

count = len(sys.argv)

# read python version from environment variable
python_version = sys.version.split(" ")[0]

if count < 2:
    print(
        "请输入参数，至少一个，以空格分割，如：make-req.py package1 package2 package3"
        "参数应该符合 pipgrip 的格式"
    )
    exit(1)

package_names = sys.argv[1:]


def get_os_str():
    os_str = platform.system()
    if os_str == "Darwin":
        return "macos"
    if os_str == "Linux":
        return "linux"
    if os_str == "Windows":
        return "windows"
    return os_str


def run_cmd(cmd) -> str:
    return os.popen(cmd).read()


def write_file(content):
    # read first line
    first_line = content.split("\n")[0]

    # get the package name
    package_info = first_line.split("==")
    package_name = package_info[0]
    package_version = package_info[1]

    os_str = get_os_str()

    output_path = f"packages/{package_name}/{package_version}/{os_str}"

    content = f"# python {python_version}\n" + content

    if not os.path.exists(output_path):
        os.makedirs(output_path)

    file_path = f"{output_path}/requirements.txt"

    with open(file_path, "w") as f:
        f.write(content)

    tmp_dir = f"/tmp/{package_name}-{package_version}"

    input_shell_path = f"{output_path}/install.sh"
    install_cmd = f"""conda create -n {package_name} python={python_version} -y
conda activate {package_name}

# If you don't want to use conda, remove the above lines

mkdir -p {tmp_dir}
cd {tmp_dir}
wget https://raw.githubusercontent.com/CaiJingLong/make-py-requirements/refs/heads/main/packages/{package_name}/{package_version}/requirements.txt
pip install -r requirements.txt
"""

    with open(input_shell_path, "w") as f:
        f.write(install_cmd)


for package_name in package_names:
    cmd = f"pipgrip {package_name}"
    print(f"Run '{cmd}'")

    output = run_cmd(cmd)
    print(output)

    write_file(output)
