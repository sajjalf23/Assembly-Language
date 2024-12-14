.model small       ; model directive

.stack 100h        ; stack segment directive

.data              ; data segment directive

.code              ; code segment directive

main proc
    
    mov ah , 1
    int 21h
    mov bl , al
    sub bl , 48     ; subtract 48 to convert the input chracter to ascii as 
                    ; service routine 1 is used to take a character as input

    mov ah , 1
    int 21h
    mov cl , al
    sub cl , 48

    add bl , cl
    add bl , 48      ; to convert the (bl + cl result) to asciii so that it can be displayed properly using mov ah , 2 as
                     ; service routine 2 is used to print a character
    mov dl , bl
    mov ah , 2
    int 21h

    mov ah , 4ch
    int 21h

main endp
main end