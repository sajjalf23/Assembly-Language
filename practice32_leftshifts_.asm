.model small   ;model directive    

.stack 100h   ;stack directive   

.data         ; data segment directive  

    string1 db " let x = 1 $"
    string2 db " x * 8 =  $"

.code         ; code segment directive   

                ; ___ TASK ___

    mov ax , @data
    mov ds , ax

    mov dx , offset string1
    mov ah , 9
    int 21h

    mov bl , '1'
    sub bl , '0'
    shl bl , 3
    
    mov dx , offset string2
    mov ah , 9
    int 21h
    
    add bl , '0'
    mov dl , bl
    mov ah , 2
    int 21h

    mov ah , 4ch
    int 21h

main endp
end main