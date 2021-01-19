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
_ft_strlen:
	MOV eax, -1

loop:
	INC eax
	CMP byte [rdi + rax], 0
	JNE loop
	RET
