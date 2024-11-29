section .data
    msg1 db "Dios", 10 ; Cadena "Dios" con un salto de línea
    len1 equ $ - msg1  ; Longitud de la cadena msg1

    msg2 db "Llevame", 10 ; Cadena "Llevame" con un salto de línea
    len2 equ $ - msg2     ; Longitud de la cadena msg2

    msg3 db "Yaaaaaa", 10 ; Cadena "Yaaaaaa" con un salto de línea
    len3 equ $ - msg3     ; Longitud de la cadena msg3

section .text
    global _start

_start:
    ; Imprimir "Dios"
    mov rax, 1          ; syscall: write
    mov rdi, 1          ; file descriptor: stdout
    mov rsi, msg1       ; dirección del mensaje
    mov rdx, len1       ; longitud del mensaje
    syscall

    ; Imprimir "Llevame"
    mov rax, 1          ; syscall: write
    mov rdi, 1          ; file descriptor: stdout
    mov rsi, msg2       ; dirección del mensaje
    mov rdx, len2       ; longitud del mensaje
    syscall

    ; Imprimir "Yaaaaaa"
    mov rax, 1          ; syscall: write
    mov rdi, 1          ; file descriptor: stdout
    mov rsi, msg3       ; dirección del mensaje
    mov rdx, len3       ; longitud del mensaje
    syscall

    ; Salir del programa
    mov rax, 60         ; syscall: exit
    xor rdi, rdi        ; código de salida: 0
    syscall
