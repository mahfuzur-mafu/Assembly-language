include "emu8086.inc" 

.model small
.stack 100h
.data
.code

main proc
    
    mov cx , 80      
            
    mov ah , 2       
        
    mov dl , '*'     
    strs: 
    
        int 21h      
    
    loop strs   
    
    
     mov ah,4ch
     int 21h
        
    main endp

end main
