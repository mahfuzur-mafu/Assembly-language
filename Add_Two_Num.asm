 .model

.stack

.data

.code

main proc
         
         mov ah,01h
         
         int 21h 
         
         mov bl,al 
          
           
         mov ah,01h
         
         int 21h 
         
         
         mov cl,al 
         mov ah,02h

          mov dl,0Ah
         
         int 21h
         mov dl,0Dh
         int 21h   
         
          
         add bl,cl
         sub bl,30h 
          
         
              
         mov dl,bl
         
         
         mov ah,02h
         
         int 21h
                    
main endp

end main