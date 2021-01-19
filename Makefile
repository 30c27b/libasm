# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ancoulon <ancoulon@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/19 11:03:15 by ancoulon          #+#    #+#              #
#    Updated: 2021/01/19 11:28:58 by ancoulon         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libasm.a

ASM			= nasm
ASMFLAGS	= -f macho64

AR			= ar rcs

CC			= clang
CFLAGS		= -Wall -Wextra -Werror

RM			= rm -f

SRCS		= srcs/ft_strlen.s
OBJS		= $(SRCS:.s=.o)

TESTN		= tester
TESTF		= main.c

%.o:		%.s
			$(ASM) $(ASMFLAGS) -o $@ $<

all:		$(NAME)

$(NAME):	$(OBJS)
			$(AR) $(NAME) $(OBJS)

test:		$(NAME)
			$(CC) $(CFLAGS) $(TESTF) $(NAME) -o $(TESTN)

clean:
			$(RM) $(OBJS)

fclean:		clean
			$(RM) $(NAME)
			$(RM) $(TESTN)

re:			fclean all

.PHONY:		all test clean fclean re
