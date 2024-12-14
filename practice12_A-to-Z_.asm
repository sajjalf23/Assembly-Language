.model small       ; model directive

.stack 100h        ; stack segment directive

.data              ; data segment directive

.code              ; code segment directive

main proc                 ;  printing A to Z
    
    mov dl , 'A'
    mov cx , 26          ; counter register stores how many times a loop iterates

    repeat:             ; loop start

    mov ah , 2           ; printing
    int 21h

    add dl , 1           ; incrementing alphabets

    loop repeat          ; loop ends
    
    mov ah , 4ch              ; EXIT
    int 21h

main endp
main end