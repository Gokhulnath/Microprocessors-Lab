;Program to convert hexadecimal to bcd

assume cs:code,ds:data
data segment
	input db 0AAh
	out1 db 00h
	out2 db 00h
data ends
code segment
	org 0100h
start:
	mov ax,data
	mov ds,ax
	mov ah,00h
	mov al,input
	mov bl,64h
	div bl
	mov out1,al
	mov al,ah
	mov ah,00h
	mov bh,0Ah
	div bh
	mov cl,04h
	shl al,cl
	add al,ah
	mov out2,al
	mov ah,4ch
	int 21h
	code ends
end start