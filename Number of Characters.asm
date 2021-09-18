include "emu8086.inc" 
.model small
.stack 100h
.data 
.code

main proc 
    
    mov cx,0                                                  
                               
    mov ah,1
    int 21h                    
    
                               
        while:                 
        cmp al, 0DH
        je exit                
        inc cx
        int 21h                
        jmp while
                               

     exit:
     MOV AH, 2                    
     MOV DL, 0DH          
     INT 21H
     MOV DL, 0AH                  
     INT 21H

     mov ax , cx                  
     call print_num

     mov ah,4ch
     int 21h
        
    main endp

    DEFINE_SCAN_NUM 
    DEFINE_PRINT_NUM   
    DEFINE_PRINT_NUM_UNS   
    

end main
