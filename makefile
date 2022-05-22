# makefile顶层目录
TOP_DIR=$(shell pwd)

# 输出程序目录
OUT_DIR=$(TOP_DIR)/build
SRC_DIT=$(TOP_DIR)/src

build : $(OUT_DIR)/boot/boot.bin
	bximage -q -hd=16 -func=create -sectsize=512 -imgmode=flat $(OUT_DIR)/easyos.img
	dd if=$(OUT_DIR)/boot/boot.bin of=$(OUT_DIR)/easyos.img bs=512 count=1 conv=notrunc

$(OUT_DIR)/boot/%.bin : $(SRC_DIT)/boot/%.asm
	$(shell mkdir -p $(dir $@))
	nasm -f bin $< -o $@

clean:
	rm -rf $(OUT_DIR)

run:
	bochs -q -f ./bochs/bochsrc

.PHONY: build clean

