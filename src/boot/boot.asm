[org 0x7c00]

; 设置屏幕模式为文本模式，清除屏幕
mov ax, 3
int 0x10

; 初始化段寄存器
mov ax, 0
mov ds, ax
mov es, ax
mov ss, ax
mov sp, 0x7c00

mov ax, 0xb800  ;0xb800是文本模式显示适配器地址
mov es, ax
mov byte [es:0],'B'
mov byte [es:1],0x07
mov byte [es:2],'O'
mov byte [es:3],0x07
mov byte [es:4],'O'
mov byte [es:5],0x07
mov byte [es:6],'T'
mov byte [es:7],0x07


;阻塞
jmp $

; 填充 0
times 510 - ($ - $$) db 0

; 主引导扇区的最后两个字节必须是 0x55 0xaa
; dw 0xaa55
db 0x55, 0xaa
