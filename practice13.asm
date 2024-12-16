.model small        ; model directive

.stack 100h         ; stack segment directive

.data               ; data segment directive

    string1 db 'first Number(x) : $'         ; strings declaration and initilization
    string2 db 'second number(y) : $'        ; $ sign is terminator
    string3 db 'addition of x & y : $'
    newline db 13,10,'$'                     ; carraige return (13) , linefeed (10) ,

.code            ; code segment directive
   
   main proc

   mov ax , @data          ; Load address of data segment
   mov ds , ax             ; initilize data segment directive in data segment register using accumulator register

        ; take input 1

   mov dx , offset string1       
   mov ah , 9               ; 9 service routine to print string
   int 21h

   mov ah , 1               ; 1 serviec routine to take input
   int 21h

   sub al , 48               ; to convert character into numeric
   mov bl , al

        ; new line

   mov dx , offset newline
   mov ah , 9
   int 21h

        ; take input 2

   mov dx , offset string2
   mov ah , 9
   int 21h

   mov ah , 1
   int 21h

   sub al , 48              ; to convert character into numeric
   mov cl , al

        ; new line

   mov dx , offset newline
   mov ah , 9
   int 21h

        ; display ans
        
   mov dx , offset string3
   mov ah , 9
   int 21h               ; interrupt

   add bl , cl
   add bl , 48               ; to convert numeric into character so that i can be properly displayed using service routine 2 (for character)
   mov dl , bl
   mov ah , 2                ; service routine 2 to print a character
   int 21h

   mov ah , 4ch           ; EXIT
   int 21h

end main
main end

