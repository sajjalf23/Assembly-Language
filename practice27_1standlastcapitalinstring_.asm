.model small   ;model directive    

.stack 100h   ;stack directive   

.data         ; data segment directive  

    string1 db " enter a lin that end with 13 $"
    string2 db " first capital letter $"
    string3 db " last capital letter $"
    string4 db " No capital letter $"

    FirstLetter db 0
    LastLetter db 0
    Flag  db 0

.code         ; code segment directive   

                ; ___ TASK ___


main proc 

    mov ax, @data
    mov ds , ax

    mov dx , string1
    mov ah , 9
    int 21h

    mov Flag , 0
    mov LastLetter , 0
    mov FirstLetter , 0

    l:

    mov ah , 1
    int 21h

    cmp al , 13
    je out

    cmp al , "A"
    jb l

    cmp al , "Z"
    ja l

    cmp Flag , 0
    jne last 

    first:
    mov Flag , 1
    mov FirstLetter , al

    last :
    mov LastLetter , al

    jmp l


    out:
    cmp Flag , 0
    je no_cap

    mov dx , offset string2
    mov ah , 9
    int 21h
    mov dl , FirstLetter
    mov ah , 2
    int 21h
    mov dx , offset string3
    mov ah , 9
    int 21h
    mov dl , LastLetter
    mov ah , 2
    int 21h
    jmp exit
    
    no_cap :
    mov dx , string4
    mov ah , 9
    int 21h

    exit:
    mov ah , 4ch
    int 21h

 
main endp
end main