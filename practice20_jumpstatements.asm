.model small   ;model directive                                      ; Jump Conditions
                                                                     ; je               jump if equal to
.stack 100h   ;stack directive                                       ; jne              jump if not equal to   
                                                                     ; jz               jump if zero
.data         ; data segment directive                               ; jnz              jump if not zero
                                                                     ; jb               jump if below
    string1 db 'Enter a character : $'                               ; jh               jump if high               
    string2 db 'It is upper Case letter $'                           ; jbe              jump if below or equal to
    string3 db 'It is not upper Case letter $'                       ; jhe              jump if high or equal to
                                                                     ; cmp only minus too operand and store result in flags

.code         ; code segment directive    

                ; ___ TASK ___
                ; if else statement_ jump statements

main proc   
  
    mov ax , @data
    mov ds , ax

    mov dx , offset string1
    int 21h

    mov ah , 1
    int 21h

    cmp al , "A"
    jb L1

    cmp al , "Z"
    jh L2

    mov dx , offset string2
    jmp display


    L1 :
    mov dx , offset string3
    jmp display


    L2:
    mov dx , offset string3
    jmp display

    display:
    int 21h
    mov ah , 4ch
    int 21h


main endp
end main