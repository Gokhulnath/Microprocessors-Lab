
;Program for subtracting 2, 16 bit numbers

assume cs:code,ds:data
data segment 
	opr1 dw 0011h
        opr2 dw 0099h
        result dw 0000h
	carry dw 0000h  
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax
        mov ax,0000h
        mov ax,opr1
        mov bx,opr2
	mov cx,0000h
	sub ax,bx
	jnc here
	inc cx
	neg ax
here:  mov result,ax
	mov carry,cx
        mov ah,4ch
        int 21h
	code ends
end start
