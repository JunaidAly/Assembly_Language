dosseg
.model small
.stack 100h
.code
  main proc
  
  mov dl , 'A'
  mov ah , 2
  int 21h
  
  mov dl , 'L'
  mov ah ,2
  int 21h
  
  mov dl , 'I'
  mov ah ,2
  int 21h
  
  mov ah, 4ch
  int 21h
  
  
  
  main endp
  
  
  end main