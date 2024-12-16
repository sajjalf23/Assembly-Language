.model small        ; model directive

.stack 100h         ; stack segment directive

.data               ; data segment directive
    
    string1 EQU 'Firstalphabet of firstname $'          ; EQU means constants
    string2 EQU 'Firstalphabet of Second-name $' 
    string4 EQU 'Firstalphabet of Father''s-name $' 
    string3 EQU 'Name is $'
    prompt1 db string1                ; initilized by constant
    prompt2 db string2
    prompt4 db string4
    prompt3 db string3

.code            ; code segment directive
   
     main proc

     mov ax , @data    ; load address of data segment directive
     mov ds , ax       ; load address of data segment directive to data segment register

         ; take Firstalphabet of firstname

     mov dx , offset prompt1
     mov ah , 9
     int 21h

     mov ah , 1
     int 21h

     mov bl , al

         ; take firstalphabet of secondname

     mov dx , offset prompt2
     mov ah , 9
     int 21h

     mov ah , 1
     int 21h

     mov cl , al

         ; take firstalphabet of father's name

     mov dx , offset prompt4
     mov ah , 9
     int 21h

     mov ah , 1
     int 21h

     mov bh , al

          ; display 

     mov dx, offset prompt3
     mov ah ,9
     int 21h
     
         
     mov dl , bl
     mov ah , 2
     int 21h

     mov dl , cl
     mov ah , 2
     int 21h

     mov dl , bh
     mov ah , 2
     int 21h

     mov ah, 4Ch
     int 21h

     end main
main end

