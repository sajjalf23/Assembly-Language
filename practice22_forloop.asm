.model small   ;model directive    

.stack 100h   ;stack directive   

.data         ; data segment directive                                  

.code         ; code segment directive    

                ; ___ TASK ___
                ; for loop (ASCII Print)


main proc   
  
    mov ah , 2
    mov al , '0'

    mov cx , 256

    forloop:            ; automatically decrement cx until 0
        
        int 21h
        inc al           ; increment al value  i.e ASCII digits

    loop forloop

    mov ah , 4ch
    int 21h

main endp
end main