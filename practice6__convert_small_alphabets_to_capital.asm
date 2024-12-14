.model small       ; model directive

.stack 100h        ; stack segment directive

.data              ; data segment directive

.code              ; code segment directive

main proc                 ; convert capital 'a' to small 'A'
                          ; ASCII of 'A' is 65
                          ; ASCII of 'a' is 97
                          ; let x , a number
                          ; 97 + x = 65
                          ; x = 65 - 97
                          ; x = -32
    
    mov ah , 1
    int 21h
    mov bl , al

    sub bl , 32        ; convert lower case alphabets to uppercase by subtracting 32
    mov dl , bl
    mov ah , 2        
    int 21h

    mov ah , 4ch
    int 21h

main endp
main end