.model small       ; model directive

.stack 100h        ; stack segment directive

.data              ; data segment directive

.code              ; code segment directive

main proc                 ; convert capital 'A' to small 'a'
                          ; ASCII of 'A' is 65
                          ; ASCII of 'a' is 97
                          ; let x , a number
                          ; 65 + x = 97
                          ; x = 97 - 65
                          ; x = 32
    
    mov ah , 1
    int 21h
    mov bl , al

    add bl , 32        ; convert capital alphabets to small 
    mov dl , bl
    mov ah , 2        
    int 21h

    mov ah , 4ch
    int 21h

main endp
main end