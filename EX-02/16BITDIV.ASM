
;Program for dividing 2, 16 bit numbers

assume cs:code,ds:data
data segment 
	opr1 dw 0011h
        opr2 dw 0099h
        quotient dw 0000h
	remainder dw 0000h
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax
        mov ax,0000h
	mov dx,0000h
        mov ax,opr1
        mov bx,opr2
	div bx
	mov quotient,ax
	mov remainder,dx
        mov ah,4ch
        int 21h
	code ends
end start
