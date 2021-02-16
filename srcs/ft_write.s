global _ft_write

; ssize_t write(int fildes, const void *buf, size_t nbyte)
;
; RDI, RSI, RDX
_ft_write:
	mov		rax, 0x2000004
	syscall
	ret
