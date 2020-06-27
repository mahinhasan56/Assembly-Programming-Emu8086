mov ah,1
int 21h 
mov cl,al
sub cl,30h


mov ah,1
int 21h
mov ch,al




cmp ch,72h
je start1

cmp ch,70h
je start2


mov bl,0
jmp exit


start1:
mov al,cl
mov dl,6

mul dl
mov dx,ax
mov bh,5

div bh
mov bx,ax
jmp exit


start2:
mov al,cl
mov dl,41

mul dl
mov dx,ax
mov  bh,6

div bh
mov bx,ax
jmp exit




exit:










