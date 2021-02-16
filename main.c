/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ancoulon <ancoulon@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/19 11:11:54 by ancoulon          #+#    #+#             */
/*   Updated: 2021/02/16 16:21:43 by ancoulon         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

#include "libasm.h"

int	main(void)
{
	printf("   strlen(\"Hello World!\") = %lu\n", strlen("Hello World!"));
	printf("ft_strlen(\"Hello World!\") = %lu\n", ft_strlen("Hello World!"));
	
	char *s1 = ft_strdup("gamer");
	s1[0] = 255;
	char *s2 = "\x80";
	
	printf("ft_strcmp: %i\n", ft_strcmp(s1, s2));
	printf("strcmp   : %i\n", strcmp(s1, s2));

	char *dst1 = strdup("          ");
	char *dst2 = strdup("          ");

	char *src1 = strdup("abc");
	char *src2 = strdup("abc");
	
	printf("ft_strcpy: %s\n", ft_strcpy(dst1, src1));
	printf("strcpy   : %s\n", strcpy(dst2, src2));
}
