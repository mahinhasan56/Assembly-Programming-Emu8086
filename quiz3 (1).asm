include 'emu8086.inc'

ORG    100h

       
 .stack 100h
   
array1 db 10 DUP(0)  


    
    
    
    CALL   scan_num
    MOV bl,cl  ;bl = number of elements 
    MOV bh,cl
    MOV SI,0  
    
    start:

       mov dl,13
       mov ah,2
       int 21h
       
               
       mov dl,10
       mov ah,2
       int 21h
       
       
       call scan_num      
       mov array1[si],cx  
       inc si
       
       dec bl 
       cmp bl,0 
       jne start
       

       
       mov si,bh
       dec si
  
  print: 
        
       mov dl,13
       mov ah,2
       int 21h
       
               
       mov dl,10
       mov ah,2
       int 21h 
       
       mov ax,ARRAY1[si] 
       call print_num
       
       dec si
       
       dec bh 
       cmp bh,0 
       jne print
        



DEFINE_SCAN_NUM

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS  


END   
