assume cs:code,ds:data,es:extra
data segment
	count dw 0006h
	str1 db 0aah,0bbh,0cch,0ddh,0eeh
	org 0010h
	status dw 0000h
data ends
extra segment
	str2 db 0aah,0dbh,0cch,0ddh,0eeh
extra ends
code segment
	org 0100h
start: 	mov ax,data
	mov ds,ax
	mov ax,extra
	mov es,ax
	mov cx,count
	mov si, offset str1
	mov di, offset str2
	cld
	repe cmpsb
	mov status, cx
	mov ah,4ch
	int 21h
code ends
end start