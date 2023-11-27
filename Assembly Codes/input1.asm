dosseg
.model small
.stack 100h
.data
msg1 db 'input number is equal$'
msg2 db 'input number is not equal$'

.code

main proc

mov ax , @data
mov ds , ax
mov dl , '3'
mov ah , 1
int 21h
CMP  al , dl

JE L1

mov dx , offset msg2
mov ah , 9
int 21h

mov ah , 4ch
int 21h

L1:

mov dx , offset msg1
mov ah , 9
int 21h

mov ah , 4ch
int 21h


main endp

end main