dosseg
.model small
.stack 100h
.data


.code 

main proc

mov cx , 80


mov dl , '*'

mov ah, 2


l1:

int 21h
loop L1

mov ah , 4ch
int 21h

main endp
end main