# Auto make requirements

一些 python 包安装非常慢，比如 langflow，其依赖非常庞大，且安装过程中会遇到很多次的依赖冲突问题，
所以我就写了一个 github action 来自动生成依赖。

Becasue some package of python is very slow to install, such as langflow, the dependency of langflow is very large,
and it will meet many times of dependency conflicts.

This repo is used [github actions](https://docs.github.com/en/actions) to automatically make requirements for python packages.

The workflow will be triggered by a [workflow_dispatch](https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows#workflow_dispatch) event.

python script is used to make requirements, it uses [pipgrip](https://github.com/ddelange/pipgrip) to get the dependencies.

## Usage

1. Create a new workflow dispatch event
2. Input the package names, separated by spaces
3. Wait for the workflow to complete
4. Check the `packages` directory to see the requirements

## 中文说明

1. 创建一个新的工作流调度事件
2. 输入包名，用空格分割
3. 等待工作流完成
4. 查看 `packages` 目录查看生成的依赖

## License

This project is licensed under the [BSD 3-Clause License](LICENSE).
