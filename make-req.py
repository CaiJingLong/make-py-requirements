# 读取参数
import os
import sys

count = len(sys.argv)

if count < 2:
    print(
        "请输入参数，至少一个，以空格分割，如：make-req.py package1 package2 package3"
        "参数应该符合 pipgrip 的格式"
    )
    exit(1)

package_names = sys.argv[1:]


def run_cmd(cmd) -> str:
    return os.popen(cmd).read()


def write_file(content):
    # read first line
    first_line = content.split("\n")[0]

    # get the package name
    package_info = first_line.split("==")
    package_name = package_info[0]
    package_version = package_info[1]

    output_path = f"packages/{package_name}/{package_version}"

    if not os.path.exists(output_path):
        os.makedirs(output_path)

    file_path = f"{output_path}/requirements.txt"

    with open(file_path, "w") as f:
        f.write(content)


for package_name in package_names:
    cmd = f"pipgrip {package_name}"
    print(f"Run '{cmd}'")

    output = run_cmd(cmd)
    print(output)

    write_file(output)
