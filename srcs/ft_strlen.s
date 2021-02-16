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

; size_t ft_strlen(const char *)
;
; Inputs: RDI = string
; Return: RAX = length of the string
_ft_strlen:
	mov		rax, 0

_ft_strlen_loop:
	cmp		byte [rdi + rax], 0
	je		_ft_strlen_ret
	inc		rax
	jmp		_ft_strlen_loop

_ft_strlen_ret:
	ret
