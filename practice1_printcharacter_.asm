.model small     ; model directive

.stack 100h      ; stack segment directive
 
.data            ; data segement directive

.code            ; code segment directive

main proc

    ; let^s print a

    mov dl , 'a'         ; data register is used to store data for output
    mov ah , 2           ; accumulator register is used to take input and display output
    int 21h
    
    ; let^s print b

    mov dl , 'b'
    mov ah , 2
    int 21h             ; interrupt

    ; let^s print c

    mov dl , 'c'
    mov ah , 2
    int 21h

    mov ah , 4ch          ; EXIT
    int 21h

main endp

end main