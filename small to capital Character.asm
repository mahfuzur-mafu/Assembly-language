.model

.stack

.data

.code

main proc
         
         mov ah, 01h; 
         
         int 21h ; 
         
          
          mov bl,al ;
       
         
         sub bl,20h
              
         mov dl,bl ; 
         
         
         mov ah , 02h; 
         
         int 21h ;
          

                    
main endp

end main