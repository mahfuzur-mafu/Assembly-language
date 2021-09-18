include 'emu8086.inc'

.model small

.stack 100h

.data

.code 

main proc
    
    
    call scan_num
    mov bx,cx 

    add bx,cx 
    add bx,cx  
     
  
     MOV AH, 2              
     MOV DL, 0DH          
     INT 21H
     MOV DL, 0AH                 
     INT 21H
    
    call scan_num 
    mov dx,cx 

    add bx,dx  
     
   
     MOV AH, 2                   
     MOV DL, 0DH          
     INT 21H
     MOV DL, 0AH                
     INT 21H
    
    
    call scan_num  
    mov dx,cx  

    add dx,cx 

    sub bx,dx 
     
 
     MOV AH, 2                    
     MOV DL, 0DH          
     INT 21H
     MOV DL, 0AH                 
     INT 21H
                          
    mov ax,bx                      
    call print_num 

    mov ah,4ch
    int 21h
    
    main endp

    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    DEFINE_PRINT_STRING
    
    
end main