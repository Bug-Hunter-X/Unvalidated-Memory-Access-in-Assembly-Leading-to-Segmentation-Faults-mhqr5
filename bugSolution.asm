section .data
array dw 10, 20, 30, 40, 50 ;Example array
array_size equ ($-array)/2 ; Calculate array size in words

section .text
  global _start

_start:
  mov ecx, 2 ;Index - needs validation

  ;Bounds checking
  cmp ecx, array_size
  jge error_handler ;Jump to error handler if index is out of bounds

  mov ebx, array
  mov eax, [ebx+ecx*2] ; Access array element; 2 is the size of a word

  ;Do something with eax...

  jmp exit_program ;Jump to exit

error_handler:
  ;Handle the error - exit with error code or display an error message...
  mov eax, 1 ; sys_exit
  xor ebx, ebx ; exit code 0
  int 0x80

exit_program:
  mov eax, 1 ; sys_exit
  xor ebx, ebx ; exit code 0
  int 0x80