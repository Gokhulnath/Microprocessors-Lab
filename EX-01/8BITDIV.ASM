
;Program for division of 2, 8 bit numbers

assume cs:code,ds:data
data segment 
	opr1 db 11h
        opr2 db 99h
        quotient db 00h
	remainder db 00h
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax
	mov al,opr1
	mov ah,0h
	div opr2
	mov quotient,al
	mov remainder,ah
	mov ah,4ch
        int 21h
	code ends
end start
