global _ft_strcmp

; int strcmp(const char *s1, const char *s2);
;
; Inputs: RDI = string s1, RSI = string s2
; Return: RAX = integer greater than, equal to, or less than 0
_ft_strcmp:
	push	rbx
	push	rcx
	mov		rbx, -1

_ft_strcmp_loop:
	inc		rbx
	mov		cl, byte [rsi + rbx]
	cmp		byte [rdi + rbx], cl
	je		_ft_strcmp_eq
	jl		_ft_strcmp_neg
	jg		_ft_strcmp_pos

_ft_strcmp_eq:
	cmp		byte [rdi + rbx], 0
	jne		_ft_strcmp_loop
	mov		rax, 0
	pop		rcx
	pop		rbx
	ret

_ft_strcmp_neg:
	mov		rax, -1
	pop		rcx
	pop		rbx
	ret

_ft_strcmp_pos:
	mov		rax, 1
	pop		rcx
	pop		rbx
	ret
