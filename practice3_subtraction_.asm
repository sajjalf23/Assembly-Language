.model small             ; model directive

.stack 100h              ; stack segment directive

.data                    ; data segment directive

.code                    ; code segment directive

main proc 

    ; let^s subtract 2 - 1
     
    mov bl , 2           ; 2 & 1 is stored in registers
    mov cl , 1
    sub bl , cl          ; bl is destination operand & cl is source operand
    add bl , 48          ; to convert into ascii by adding 48
    mov dl , bl           ; data register holds data for output
    mov ah , 2           ; service routine 2 displays the character
    int 21h

    ; let^s subtract 2 - 5

    mov bl , 2
    mov cl , 5
    sub bl , cl
    add bl , 48
    neg bl               ; Convert result to positive for display
    mov dl , bl
    mov ah , 2
    int 21h

    mov ah , 4ch       ;EXIT
    int 21h

main endp
end main