extern ___error

global _ft_write

; ssize_t write(int fildes, const void *buf, size_t nbyte)
;
; RDI, RSI, RDX
_ft_write:
	mov		rax, 0x2000004
	syscall
	jc		_ft_write_error
	ret

_ft_write_error:
	push	rbx
	mov		rbx, rax
	call	___error
	mov		[rax], rbx
	pop		rbx
	mov		rax, -1
	ret
