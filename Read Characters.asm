include "emu8086.inc" 
.model small
.stack 100h
.data
.code

main proc
    
    input:
                            
    mov ah , 1
    int 21h
                            
    cmp  al, 20h
    je exit
                            
    mov ah , 2
    mov dl , al
    int 21h 
    
    jmp input
          
          
     exit:
     
          
     mov ah,4ch
     int 21h
        
    main endp


end main

