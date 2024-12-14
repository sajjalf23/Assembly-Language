.model small      ; model directive

.stack 100h       ; stack segment directive

.data             ; data segment directive

.code             ; code segment directive

main proc

    mov ah , 1        ; accumulator register is used to take input or print output  && servie routine 1 is used to take input
    int 21h           ; interrupt

                       ; data register is used to keep data for output
    mov dl , al        ; al register is holding data which we have as input due to mov ah ,1 instruction
    mov ah , 2         ; service routine 2 is used to display the data stored in data register
    int 21h         


         ; Let's take another input


    mov ah , 1
    int 21h

    mov dl , al
    mov ah , 2
    int 21h

    mov ah , 4ch     ; for EXIT 
    int 21h

main endp
end main