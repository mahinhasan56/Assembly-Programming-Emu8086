mov ah,1
int 21h
mov bl,al

mov ah,1
int 21h
mov bh,al

mov ah,1
int 21h
mov cl,al

mov ah,2
mov dl,0Ah
int 21h 

mov ah,2
mov dl,0Dh
int 21h

mov ah,2
mov dl,bh
int 21h

mov ah,2
mov dl,0Ah
int 21h

mov ah,2
mov dl,0Dh
int 21h 

mov ah,2
mov dl,cl
int 21h
