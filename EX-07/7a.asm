;Program for BCD Addition

assume cs:code,ds:data
data segment 
	opr1 db 29h
    	opr2 db 95h
    	result db 00H
	carry db 00H      
data ends
code segment
	org 0100h
start:  
	mov ax,data
	mov ds,ax
	mov al,opr1
	mov bl,opr2
	mov ch,00h
	add al,bl
	daa 
	jnc here
	inc ch
here:  
	mov result,al
	mov carry,ch
	mov ah,4ch
	int 21h
	code ends
end start