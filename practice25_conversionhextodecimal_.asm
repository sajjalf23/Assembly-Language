.model small   ;model directive    

.stack 100h   ;stack directive   

.data         ; data segment directive  

    string1 db "enter from 0 to 9 or A to F $"
    string2 db "illegal number entered $"
    string3 db "u want to reenter the number enter Y/y $"
    string4 db "in hexdecimal the answer is $"
    string5 db 13,10,"$"

.code         ; code segment directive    

                ; ___ TASK ___
                ; An AL Program that will prompt the user to enter a hex digit
                ; character ( "0"..."9" or "A"..."F" ), display it on the next
                ; line in decimal, and ask the user if he or she wants to do it
                ; again. If the user types "y" or "Y", the program repeats; if
                ; the user types anything else, the program terminates. If the
                ; user enters an illegal character, prompt the user to try
                ; again.


main proc 

    mov ax, @data
    mov ds , ax

    rerun:

    mov dx , offset string1
    mov ah ,9
    int 21h
  
    mov ah , 1
    int 21h

    mov bl , al
    cmp bl , 'A'
    jb L2

    cmp bl , 'F'
    ja  illegal

    jmp greaterthan9

    L2:
    cmp bl , '0'
    jb illegal

    cmp bl , '9'
    ja  illegal

    jmp lessthan9

    greaterthan9:

    mov dx, offset string4
    mov ah , 9
    int 21h
    mov dx, offset string5
    mov ah , 9
    int 21h
    mov dl , "1"
    mov ah , 2
    int 21h
    sub bl , "A"
    add bl , "0"
    mov dl , bl
    mov ah , 2 
    int 21h

    lessthan9:

    mov dx, offset string4
    mov ah , 9
    int 21h
    mov dx, offset string5
    mov ah , 9
    int 21h
    mov dl , bl
    mov ah , 2 
    int 21h

    illegal:

    mov dx, offset string2
    mov ah , 9
    int 21h


    mov dx, offset string3
    mov ah , 9
    int 21h
    mov ah , 1
    int 21h

    cmp al , "Y"
    je rerun

    cmp al , "y"
    je rerun

    
    mov ah , 4ch
    int 21h

    

 
main endp
end main