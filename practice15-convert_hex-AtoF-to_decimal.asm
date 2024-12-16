.model small        ; model directive

.stack 100h         ; stack segment directive

.data               ; data segment directive
    
    string1 db ' Enter A to F hex $'          
    string2 db ' Conversion into decimal $' 

.code            ; code segment directive
   
     main proc

     mov ax , @data    ; load address of data segment directive
     mov ds , ax       ; load address of data segment directive to data segment register

         ; take input
 
     mov dx , offset string1
     mov ah , 9
     int 21h

     mov ah , 1
     int 21h

     mov bl , al
     sub bl , 'A'            ; to get the ones number

        ; display output

     mov dx , offset string2
     mov ah , 9
     int 21h

    mov dl , '1'              ; display ten's number
    mov ah , 2
    int 21h

    mov dl , bl
    add dl , 48               ; converting to ascii & displaying
    mov ah , 2
    int 21h

    mov ah , 4ch
    int 21h


    
    end main
main end