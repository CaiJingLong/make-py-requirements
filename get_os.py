# 获取操作系统

import platform


def get_os_str():
    os_str = platform.system()
    if os_str == "Darwin":
        return "macos"
    if os_str == "Linux":
        return "linux"
    if os_str == "Windows":
        return "windows"
    return os_str


print(get_os_str())
