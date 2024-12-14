.model small       ; model directive

.stack 100h        ; stack segment directive

.data              ; data segment directive

.code              ; code segment directive

main proc                 ;  printing 0 to 9
    
    mov dl , '0'         
    mov cx , 10         ; countere register holds how many times a loop iterate

    repeat:             ; loop start

    mov ah , 2          ; print
    int 21h

    add dl , 1          ; increment in data

    loop repeat         ; loop ends
     

    mov ah , 4ch              ; EXIT
    int 21h

main endp
main end