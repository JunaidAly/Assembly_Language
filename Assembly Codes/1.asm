.MODEL SMALL     ; Specifies the memory model as small
.STACK 100H      ; Sets the stack size to 256 bytes (100H in hexadecimal)

.DATA            ; Data section, where you declare variables
SUM DW ?          ; Variable to store the sum

.CODE            ; Code section starts here
MAIN PROC        ; Start of the main procedure

    MOV AX, @DATA ; Load the address of the data segment into AX
    MOV DS, AX    ; Move the value in AX to the data segment register (DS)

    MOV AX, 0     ; Initialize AX to 0 (for sum)
    MOV CX, 8     ; Initialize CX to 8 (number of terms)
    
   
CALC_SUM:
    ADD AX, CX
   
    ; Add CX (current term) to AX (running sum)
    LOOP CALC_SUM ; Decrement CX and repeat the loop if CX is not zero

    ; AX now contains the sum of 1 + 2 + 3 + ... + 8

    MOV SUM, AX   ; Store the sum in the SUM variable
    
    MOV AH, 4CH   ; Set the function code 4CH (program termination) in AH
    INT 21H       ; Call DOS interrupt 21h to terminate the program

MAIN ENDP        ; End of the main procedure

END MAIN         ; End of the program
