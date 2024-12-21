.model small   ;model directive

.stack 100h   ;stack directive

.data         ; data segment directive

    string1 db 'All 256 ASCII character r here$'
    string2 db 13,10,'$'

.code         ; code segment directive 

                ; ___ TASK ___
                ; Printing all ASCII , 256
                ; beep the computer

main proc   
     
    mov ax , @data      ; load accumulator register with data segment directive
    mov ds , ax         ; loading data segment register with dat segment directive

    mov dx , offset string1
    mov ah , 9
    int 21h

    mov dl , 0
    mov cx , 256
    
    repeat:

    mov ah , 2
    int 21h

    mov dx , offset string2
    mov ah , 9
    int 21h

    INC dl

    loop repeat

    mov dl , 7              ; beep the computer ; 7 is the beep character
    mov ah , 2
    int 21h

    mov ah , 4ch             ; EXIT
    int 21h



main endp
end main