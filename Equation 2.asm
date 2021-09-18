include 'emu8086.inc'
.model small
.stack 100h
.data 
z dw ?
.code 

main proc
    

    
    mov ax,@data
    mov ds,ax

    call scan_num
    mov bx,cx  
    
    add bx,cx
    add bx,cx
    add bx,cx
    add bx,cx  

    call scan_num 
    mov dx,cx 
      
    add dx,cx
    add dx,cx
    add dx,cx
    add dx,cx                     
    
    add z,dx
    add z,bx
    
    
    mov ax,z                        
    call print_num 
    
    mov ah,4ch
    int 21h
    
    main endp

    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    DEFINE_PRINT_STRING
    
end main
