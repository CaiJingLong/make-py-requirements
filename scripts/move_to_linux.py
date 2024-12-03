import os

# find_all_requirements_files
requirements_files = []
for root, dirs, files in os.walk("packages"):
    for file in files:
        if file == "requirements.txt":
            requirements_files.append(os.path.join(root, file))


def run_cmd(cmd):
    print(f"run cmd: {cmd}")
    log = os.popen(cmd).read()
    if log != "" and log != "\n" and log is not None:
        print(log)


for requirements_file in requirements_files:
    parent_dir = os.path.dirname(requirements_file)

    if parent_dir.endswith("linux"):
        print(f"{parent_dir} already has linux, skip")
        continue

    target_dir = os.path.join(parent_dir, "linux")

    list_files = os.listdir(parent_dir)
    run_cmd(f"mkdir -p {target_dir}")
    for file in list_files:
        if file == "install.sh" or file == "requirements.txt":
            run_cmd(
                f"mv {os.path.join(parent_dir, file)} {os.path.join(target_dir, file)}"
            )
