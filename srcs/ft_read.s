extern ___error

global _ft_read

; ssize_t read(int fildes, void *buf, size_t nbyte);
;
; RDI, RSI, RDX
_ft_read:
	mov		rax, 0x2000003
	syscall
	jc		_ft_read_error
	ret

_ft_read_error:
	push	rbx
	mov		rbx, rax
	call	___error
	mov		[rax], rbx
	pop		rbx
	mov		rax, -1
	ret
