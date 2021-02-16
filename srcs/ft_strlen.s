; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ancoulon <ancoulon@student.s19.be>         +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/01/19 11:03:15 by ancoulon          #+#    #+#              ;
;    Updated: 2021/01/19 11:11:21 by ancoulon         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strlen

; size_t ft_strlen(const char *s)
;
; Inputs: RDI = string s
; Return: RAX = length of the string
_ft_strlen:
	mov		rax, 0				; setting return value to 0

_ft_strlen_loop:
	cmp		byte [rdi + rax], 0	; comparing byte at string[rax] with 0
	je		_ft_strlen_ret		; if string[rax] == 0, returning rax
	inc		rax					; rax++
	jmp		_ft_strlen_loop		; go to the start of the loop

_ft_strlen_ret:
	ret							; return
