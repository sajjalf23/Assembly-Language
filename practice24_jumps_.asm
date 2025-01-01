.model small   ;model directive    

.stack 100h   ;stack directive   

.data         ; data segment directive                                  

.code         ; code segment directive    

                ; ___ TASK ___
                ; read two capital letters, and display them in alphabetical order.


main proc   
  
    mov ah , 1
    int 21h

    mov bl , al

    mov ah , 1
    int 21h

    mov cl , al

    cmp bl, cl
    jge L2

    mov dl , bl
    mov ah , 2 
    int 21h
    mov dl , cl
    mov ah , 2 
    int 21h
    jmp end_program

    L2:
    mov dl , cl
    mov ah , 2
    int 21h
    mov dl , bl
    mov ah , 2
    int 21h


    end_program :
    mov ah , 4ch
    int 21h

main endp
end main