.model small 
.stack 100h
.data
var1 db "Enter First Number:$"
var2 db "Enter Second Number :$"     
var3 db "Sum :$"
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    lea dx,var1
    mov ah,09h
    int 21h   
     
    mov ah,01h
    int 21h 
    

    mov bl,al
        mov ah,02h
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h   
    
    
    lea dx,var2
    mov ah,09h
    int 21h
     
    mov ah,01h
    int 21h

    mov bh,al 
    
    sub bh,30h
    sub bl,30h  
    
    mov ah,02h
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h 
    
    lea dx,var3  
    mov ah,09h
    int 21h           
    
    add bh,bl
    add bh,30h
     
    mov dl,bh   
    
    mov ah,02h
    int 21h
    
     
    main endp
end main