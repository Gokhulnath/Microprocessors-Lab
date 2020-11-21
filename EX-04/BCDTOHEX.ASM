;Program to convert BCD to hexadecimal

assume cs:code,ds:data

data segment
	bcd db 59h
	one db 00h
	two db 00h
	hex db 00h
data ends

code segment
	org 0100
start:
	mov ax,data
	mov ds,ax
	mov al,bcd
	mov bl,bcd
	mov cl,04h
	shr al,cl
	mov one,al
	shl bl,cl
	shr bl,cl
	mov two,bl
	mov ah,00h
	mov dl,0Ah
	mul dl
	add al,bl
	mov hex,al
	mov ah,4ch
	int 21h
	code ends
end start