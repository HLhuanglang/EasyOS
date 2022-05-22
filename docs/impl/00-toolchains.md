# 开发工具

## nasm

使用`nasm -h`来查看使用手册，目前easyos中只会使用到很简单的命令：

```assembly
nasm -f <format><filename> -o <output>
```

其中format支持很多格式，但是目前只需要用到bin和elf。使用bin模式就是纯粹的二进制，不掺杂任何其他的信息，直接给CPU就能用。一般一些二进制可执行文件(elf、pe格式)，里面有一些内存布局、位置信息等，是提供给linker使用的。

## dd

磁盘操作工具，使用`dd --help`或是`man dd`可以查看具体规则，目前easyos中使用到如下内容：

- if=FILE，指定要读取的文件
- of=FILE，数据输出到指定的文件
- bs=BYTES，块大小
- count=BLOCKS，块的数量
- conv=CONVS，指定如何转换文件

## ld

链接器规定，默认只把名为_start的函数作为程序的入口地址。