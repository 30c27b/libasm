global _ft_strlen

; size_t ft_strlen(const char *s)
;
; Inputs: RDI = char *s
; Return: RAX = size_t
_ft_strlen:
	mov		rax, 0

_ft_strlen_loop:
	cmp		byte [rdi + rax], 0
	je		_ft_strlen_ret
	inc		rax
	jmp		_ft_strlen_loop

_ft_strlen_ret:
	ret