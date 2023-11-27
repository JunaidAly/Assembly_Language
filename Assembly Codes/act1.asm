; Author: Ashfaq Hussain Farooqi
section .data

section .code
global main
extern dumpregs, crlf, writebin, writechar, exit

main:
    mov eax, 0
    mov al, 'a'
    call dumpregs
    call crlf
    call writebin
    call crlf
    call writechar
    call crlf
    and al, 11011111b
    call writechar
    call crlf
    call exit
