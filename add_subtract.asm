mov ah 1
int 21h 

mov bl,al
sub bl,30h

mov ah 1
int 21h
sub al,30h

add al,bl
mov bl,al

mov ah,1
int 21h
sub al,30h
sub bl,al
mov dl,0Ah

mov ah,2
int 21h
mov dl,0Dh
mov ah,2
int 21h

mov dl,bl
add dl,30h
mov ah,2
int 21h



