dosseg
.model small
.stack 100h
.data

.code

main proc

mov cx , 256

mov dl , 0

mov ah , 2

L1:

inc dl
dec cx

int 21h

jnz L1

mov ah , 4ch
int 21h

main endp
end main