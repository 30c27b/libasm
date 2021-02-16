global _ft_read

; ssize_t read(int fildes, void *buf, size_t nbyte);
;
; RDI, RSI, RDX
_ft_read:
	mov		rax, 0x2000003
	syscall
	ret
