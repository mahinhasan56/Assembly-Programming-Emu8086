include 'emu8086.inc'

ORG    100h


        
 
       
 .stack 100h
   
        

array1 dw 100 DUP(0)  

var dw 0



CALL   scan_num  


MOV var,CX
 



 
    
  MOV SI,0  
    start:
    
   
 
       mov dl,13
       mov ah,2
       int 21h
       
               
       mov dl,10
       mov ah,2
       int 21h
       push cx
       call scan_num     
       mov bx,cx
       pop cx 
       mov array1[si],bx  
       inc si 
       inc si
       loop start
       
       
       

       mov cx,var
       mov si,8
  
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
       dec si
      
       
       loop print 















DEFINE_SCAN_NUM

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS  


END   
