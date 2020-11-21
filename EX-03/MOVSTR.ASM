
;Program for MOVING A STRING OF BYTES

assume cs:code,ds:data,es:extra
data segment
	count dw 0004h
	source db 10h,11h,12h,13h
data ends
extra segment
	dest db 00h,00h,00h,00h
extra ends
code segment
	org 0100h
start: mov ax,data
	mov ds,ax
	mov ax,extra
	mov es,ax
	mov cx,count
	mov si, offset source
	mov di, offset dest
	cld
	rep movsb
	mov ah,4ch
	int 21h
	code ends
end start