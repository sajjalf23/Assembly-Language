.model small       ; model directive

.stack 100h        ; stack segment directive

.data              ; data segment directive

.code              ; code segment directive

main proc                 ;  Program to read a character and display it on a new line

                ; take input
    mov ah , 1
    int 21h
    mov bl , al

                ; print a new line before displaying character

    mov dl , 13        ; ASCII code for carriage return '\r'
    mov ah , 2
    int 21h
                 

    mov dl , 10        ; ASCII code for new line '\n'
    mov ah , 2
    int 21h
                 
                ; display 

    mov dl , bl
    mov ah , 2
    int 21h

    mov ah , 4ch
    int 21h
             

main endp
main end