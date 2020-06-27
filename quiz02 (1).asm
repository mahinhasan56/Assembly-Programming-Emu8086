mov ax,17
mov bl,5 
jmp start

start: 

mov dl,bl
div bl
cmp ah,0h 
je exit


mov bl,ah
mov al,dl
mov ah,0
jmp start
exit:




































