;Program for BCD Subtraction

assume cs:code,ds:data
data segment 
	opr1 db 55H
	opr2 db 22H
	result db 00H
	sign db 00H      
data ends
code segment
	org 0100h
start:
	mov ax,data
	mov ds,ax
	mov al,opr1   
	mov bl,opr2
	mov ch,00h
	sub al,bl
	das
	jnc here
	inc ch
	mov ah, 99h
	sub ah, al
	inc ah
	mov al, ah
	das
here:
	mov result,al
	mov sign,ch
	mov ah,4ch
	int 21h
	code ends
end start