.model small       ; model directive

.stack 100h        ; stack segment directive

.data              ; data segment directive

.code              ; code segment directive

main proc
    
    mov bl , 1    
    mov cl , 2
    add bl , cl    ; bl is destination operand & cl is source operand
    add bl , 48    ; to convert the result of bl + cl to ascii character to be correctly displayed later
    mov dl , bl    ; data segment register keep data to be  used for output
    mov ah , 2     ; service routine 2 to display character
    int 21h        ; interrupt

    mov ah , 4ch   ; EXIT
    int 21h

main endp
main end