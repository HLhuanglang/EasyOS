# EasyOS
## 介绍
我对于EasyOS的期望是一个用于学习**操作系统原理**和**编码实现**的项目，可能进度会非常的缓慢，我想在实现这个操作系统的过程中，穿插的去看各种书籍理论。从整个操作系统的历史，架构设计等方面去研究。

## 项目结构
- `bochs`：配置文件,用于调试内核
  - bochs.gdb：主要用于在vscode上安装插件，通过gdb远程调试的模式，实现可视化调试
  - bochs：bochs运行时的配置文件，-f xxx可以指定路径
  - PKGBUILD：下载bochs-gdb源码并编译安装的脚本
- `docs`：一些操作系统相关的理论知识
  - img：存放图片资源
  - impl：代码实现方面的细节
  - theory：理论知识
- `src`：源码目录
  - boot：引导代码
  - include：easyos的头文件
  - kernel：内核源码
- `test`：测试目录
- makefile
- README.md

## 开发流程

将严格的进行测试，确保每一次提交，都能够正常的运行调试。提交的格式按照\<options>[msgbody]进行，options如下：

- docs：修改文档
- fix：修改bug
- add：增加功能

## 编译命令

- make build：只编译os
- make run：运行
- make debug：使用vscode、bochs-gdb进行可视化调试