org 100h 
include "emu8086.inc" 
.model small
.stack 100h
.data
.code
main proc
 
 mov ax,@data
 mov ds,ax
 
 print "Number : " 
 
 mov ah,1 
 int 21h 
 
 printn
 
 mov bl,2
 div bl 
 cmp ah,0
 je E 
 printn "o"
 jmp exit
 
 E:
 print "e" 
 jmp exit
 
 
 exit:
 mov ah,4ch
 int 21h
 
 

main endp
 DEFINE_SCAN_NUM 

end main  
ret