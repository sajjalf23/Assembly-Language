.model small        ; model directive

.stack 100h         ; stack segment directive

.data               ; data segment directive
    
    ; An AL Program to display a 10*10 solid box of asterisks
    string1 db '********** ,13,10,$'

.code            ; code segment directive
   
     main proc

    mov ax , @data    ; load address of data segment directive
    mov ds , ax       ; load address of data segment directive to data segment register

    mov dx , offset string1
    mov ah , 9
    int 21h
    mov ah , 9
    int 21h
    mov ah , 9
    int 21h
    mov ah , 9
    int 21h
    mov ah , 9
    int 21h
    mov ah , 9
    int 21h
    mov ah , 9
    int 21h
    mov ah , 9
    int 21h
    mov ah , 9
    int 21h
    mov ah , 9
    int 21h

    mov ah , 4ch
    int 21h


    
    end main
main end
