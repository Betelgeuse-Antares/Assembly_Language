;hello_world.asm
;Author: Raghavvram J
;Date: 04-06-2023

global _start

section .data
    msg db 'Hello, World!', 0x0A
    len equ $ - msg

section .text
_start:
    mov rax, 1          ; write()
    mov rdi, 1          ; stdout
    mov rsi, msg        ; message to write
    mov rdx, len        ; message length
    syscall             ; call kernel

    mov rax, 60         ; exit()
    xor rdi, rdi        ; return 0
    syscall             ; call kernel
