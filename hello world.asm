.model small 
.stack 100h
.data
var1 db "HELLO$"
var2 db "WORLD$"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,var1
    
    mov ah,09h
    int 21h 
    
    mov ah,02h
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h    
    
    lea dx,var2
    
    mov ah,09h
    int 21h
    
    main endp
end main