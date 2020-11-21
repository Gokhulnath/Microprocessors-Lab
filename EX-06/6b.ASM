assume cs:code,ds:data
data segment
	count db 08h
	org 0010h
	list db 55h,66h,00h,77h,33h,22h,11h,44h
data ends
code segment
	org 0100h
start:  mov ax,data
	mov ds,ax
	mov al,count
	mov ah,00h
	dec ax
here:	mov cx,ax
	mov si, offset list
here1:	mov bl, [si]
	cmp bl,[si+1]
	jge next
	xchg bl,[si+1]
	mov [si],bl
next:	inc si
	loop here1
	dec ax
	jnz here
	mov ah,4ch
	int 21h
code ends
end start