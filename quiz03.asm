.data
        
        array1 db 10,20,30,40
        
 .stack 100h
 
 .code 
 
 mov ax, data 
 mov ds, ax 
 mov es, ax
       
       
       ;lea si,ARRAY1 
       MOV SI,0
       mov cx,4
       
       print: 
        
       mov dl,13
       mov ah,2
       int 21h
       
               
       mov dl,10
       mov ah,2
       int 21h 
       
       mov dl,ARRAY1[si] 
       add dl,30h
       mov ah,2
       int 21h 
       
       inc si
      
       
       loop print
 
