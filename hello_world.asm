; When the following code is run in a NASM assembler for Linux (x86), it will output the text "Hello World"
section .data
    hello_msg db 'Hello World'  ; The string to print (no newline)

section .text
    global _start     ; Entry point for the linker

_start:
    ; Write "Hello World" to stdout
    mov eax, 4        ; sys_write system call number
    mov ebx, 1        ; File descriptor 1 (stdout)
    mov ecx, hello_msg  ; Pointer to the message
    mov edx, 11       ; Message length (11 characters for "Hello World")
    int 0x80          ; Trigger system interrupt for kernel

    ; Exit the program
    mov eax, 1        ; sys_exit system call number
    xor ebx, ebx      ; Exit status 0
    int 0x80          ; Trigger system interrupt for kernel
