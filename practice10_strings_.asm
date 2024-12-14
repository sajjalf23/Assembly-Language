.model small       ; model directive

.stack 100h        ; stack segment directive

.data              ; data segment directive

    string1 db 'hello$'
    string2 db 'world$'

.code              ; code segment directive

main proc                 ;  printing two strings in two lines
    
    mov ax , @data        ; accumulator register is used to take input & display output
                          ; it is associated with data segment directive here
    mov ds , ax           ; data segment register is associated with accumulator register connected to data segment directive

    mov dx , offset string1      ; offset gives the address of 1st index of string
    mov ah , 9                   ; service routine for printing string
    int 21h

    mov dl , 13                  ; carriage return
    mov ah , 2
    int 21h

    mov dl , 10                  ; newline feed
    mov ah , 2
    int 21h

                             ; accumulator register take input and display output
                             ; but it is needed to store something in data register 
                             ; as it displays what is present in data register 
    mov dx , offset string2     ; mov to data register as it contains the data to be used for output
    mov ah , 9
    int 21h

    mov ah , 4ch              ; EXIT
    int 21h

main endp
main end