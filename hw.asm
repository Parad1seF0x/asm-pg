global main

section .text

main:
    mov rbp, rsp      ; for correct debugging
    mov rax, 1        ; write(
    mov rdi, 1        ;   STDOUT_FILENO,
    mov rsi, msg      ;   "Hello, world!\n",
    mov rdx, msglen   ;   sizeof("Hello, world!\n")
    syscall           ; );

    mov rax, 60       ; exit(
    mov rdi, 0        ;   EXIT_SUCCESS
    syscall           ; );

section .rodata
    msg: db "Hello, world!"
    msglen: equ $-msg
