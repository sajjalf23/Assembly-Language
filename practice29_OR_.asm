.model small   ;model directive    

.stack 100h   ;stack directive   

.data         ; data segment directive  

    string1 db " enter a capital A to Z alphabet $"
    string2 db " in lowercase alphabet $"

.code         ; code segment directive   

                ; ___ TASK ___

    mov ax , @data
    mov ds , ax

    mov dx , offset string1
    mov ah , 9
    int 21h

    mov ah , 1 
    int 21h

    or al , 32
 
    mov dx , offset string2
    mov ah , 9
    int 21h

    mov dl , al
    mov ah , 2
    int 21h

    mov ah , 4ch
    int 21h
    



main endp
end main