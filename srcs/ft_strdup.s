extern _ft_strlen
extern _ft_strcpy
extern _malloc

global _ft_strdup

; char * strdup(const char *s1)
;
; RDI, RSI, RDX
_ft_strdup:
	call	_ft_strlen
	inc		rax
	push	rdi
	mov		rdi, rax
	call	_malloc
	pop		rdi
	mov		rsi, rdi
	mov		rdi, rax
	call	_ft_strcpy
	ret