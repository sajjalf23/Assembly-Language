.model small       ; model directive

.stack 100h        ; stack segment directive

.data              ; data segment directive

    varinteger db 2
    string db 'it is a string$', 0    ; $ sign is to represent end of string / terminator when (mov ah, 9 works) ; 0 is null termination 
    varcharacter db 'A'

.code              ; code segment directive

main proc                 ;  variables & datatypes
    
    mov ax , @data        ; accumulator register is used to take input & display output
                          ; it is associated with data segment directive here
    mov ds , ax           ; data segment register is associated with accumulator register connected to data segment directive

    mov dl , varinteger   ; accessing varinteger
    add dl , 48           ; conversion to ASCII
    mov ah , 2            ; display 
    int 21h

    mov dl , varcharacter
    mov ah , 2
    int 21h

    mov dx , offset string  ; offset gives the address of 1st index of string
    mov ah , 9              ; service routine for string printing
    int 21h

    mov bl , varinteger
    mov varcharacter , bl    ; changing varcharacter(variable) data
    mov dl , varcharacter 
    mov ah , 2
    int 21h

    mov ah , 4ch              ; EXIT
    int 21h

main endp
main end