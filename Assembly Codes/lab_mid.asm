dosseg
.model small
.stack 100h
.data

.code

main proc

mov cx , 20
mov ax , 0



L1:

add ax , cx

dec cx

add ax , 48
mov ah , 2
int 21h
JNZ L1


mov ah , 4ch
int 21h

main endp
end main