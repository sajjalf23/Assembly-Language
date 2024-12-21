.model small   ;model directive

.stack 100h   ;stack directive

.data         ; data segment directive

    string1 db '***********$'

.code         ; code segment directive 

                ; ___ TASK ___
                ; read three initials,
                ; display them in the middle of an 11*11 box of asterisks,
                ; beep the computer.

main proc   
     
    mov ax , @data      ; load accumulator register with data segment directive
    mov ds , ax         ; loading data segment register with dat segment directive

    mov ah , 1          ; input taking
    int 21h
    mov bl , al

    mov ah , 1           ; input taking
    int 21h
    mov cl , al

    mov ah , 1          ; input taking
    int 21h
    mov bh , al

    mov dx , offset string1        
    mov ah , 9                   ; service routine 9 to print string

    int 21h
    int 21h
    int 21h
    int 21h
    int 21h

    mov string1+4 , bl          ; replacing * with inputed characters
    mov string1+5 , cl
    mov string1+6 , bh

    mov dx , offset string1    ; printing replaced string
    mov ah , 9
    int 21h

    mov string1+4 , '*'        ; replacing the previous changed characters with the aesteric characters
    mov string1+5 , '*'
    mov string1+6 , '*'

    mov dx , offset string1    ; printing string 
    mov ah , 9


    int 21h                     ; interrupt
    int 21h
    int 21h
    int 21h
    int 21h

    mov dl , 7               ; beep the computer
    mov ah , 2
    int 21h

    mov ah , 4ch             ; EXIT
    int 21h



main endp
end main