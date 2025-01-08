.model small   ;model directive    

.stack 100h   ;stack directive   

.data         ; data segment directive  

    string1 db " enter a number $"
    string2 db " it^s Odd $"
    string3 db " it^s even $"

.code         ; code segment directive   

                ; ___ TASK ___
                ; An AL Program that read a number from 0 to 9 and print E if
                ; it is even and print O if it is an odd number. ( using TEST
                ; instruction ).

    mov ax , @data
    mov ds , ax

    mov dx , offset string1
    mov ah , 9
    int 21h

    mov ah , 1 
    int 21h

    test al , 00000001

    jne odd
 
    mov dx , offset string3
    mov ah , 9
    int 21h
    jmp exitt

    odd:
    mov dx , offset string2
    mov ah , 9
    int 21h
    jmp exitt

    exitt:
    mov ah , 4ch
    int 21h

main endp
end main