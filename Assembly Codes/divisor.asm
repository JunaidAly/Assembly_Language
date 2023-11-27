dosseg
.model small
.stack 100h
.data 

.code

main proc

mov ax, 2  ; Initialize dividend (AX) with 2
mov bx, 8  ; Initialize divisor (BX) with 8
mov cx, 0  ; Initialize quotient (CX) to 0

L1:
cmp bx, ax  ; Compare BX (divisor) with AX (dividend)
JL L2       ; If BX < AX, exit the loop
inc cx      ; Increment quotient (CX)
sub bx,ax  ; Subtract BX from AX
jmp L1


L2:
mov ah, 4Ch  ; Exit program
int 21h

main endp
end main
