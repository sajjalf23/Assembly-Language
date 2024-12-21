.model small   ;model directive

.stack 100h   ;stack directive

.data         ; data segment directive

    string1 db 'Enter a character : $'
    string2 db 13,10,'$'

.code         ; code segment directive 

                ; ___ TASK ___
                ; if else statement

main proc   
     
    mov ax , @data      ; load accumulator register with data segment directive
    mov ds , ax         ; loading data segment register with dat segment directive

    mov dx, offset string1
    mov ah , 9
    int 21h

    mov ah , 1
    int 21h
    mov bl , al 

    cmp bl , '5'

    jnz @EXIT

    mov dx , offset string2
    mov ah , 9
    int 21h

    mov dl  bl
    mov ah , 2
    int 21h

    @EXIT:
    mov ah , 4ch             ; EXIT
    int 21h

    


main endp
end main