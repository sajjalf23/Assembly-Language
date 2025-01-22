.model small   ;model directive    

.stack 100h   ;stack directive   

.data         ; data segment directive  

    PROMPT_1  db  'Enter a string of Capital Letters : $'
   PROMPT_2  db  0DH,0AH,'The longest consecutive increasing string is : $'
   INVALID   db  0DH,0AH,'Invalid string of Capital Letters. Try again : $'


.code         ; code segment directive   

                ; ___ TASK ___


main proc 

    mov ax, @data
    mov ds , ax

    mov bl , 0
    mov dl , 0
    mov bh , 0
    mov dh , 0
    mov cl , 0

    start:

    mov dx , offset PROMPT_1
    mov ah , 9
    int 21h

    mov ah ,1 
    int 21h

    cmp al , 13
    je end

    cmp al , "A"
    jb Invalid

    cmp al , "Z"
    ja Invalid

    cmp bl , 0
    jz  new

    cmp cl , al
    ja u
    u:
       inc bl
       mov cl , al
    
    cmp bl , dl
    jbe  start  

    mov dh , bh
    mov dl , bl

    new:
    inc bl
    mov cl , al
    mov bh , al

    jmp start

    invalid:
    mov dx , offset INVALID
    mov ah , 9
    int 21h
    mov bl , 0
    mov ah , 0
    mov cl , 0
    jmp start

    end:

    mov dx , offset PROMPT_2
    mov ah , 9
    int 21h
    
    mov cx , dl
    mov al , dh
    L:
       mov dl , al
       mov ah , 2
       int 21h
       inc al
    loop L

    mov ah , 4ch
    int 21h

    end main
main end