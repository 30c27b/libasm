/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ancoulon <ancoulon@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/19 11:11:54 by ancoulon          #+#    #+#             */
/*   Updated: 2021/02/16 12:18:52 by ancoulon         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

#include "libasm.h"

int	main(void)
{
	printf("ft_strlen(\"\") = %d\n", ft_strlen(""));
	printf("ft_strlen(\"Hello World!\") = %d\n", ft_strlen("Hello World!"));
	
	char *s1 = "hvtuklshriehnslkerjhntkrujbnjtvntrjbslnt.lnbejrtbnrt.ktjnl";
	char *s2 = "hvtuklshriehnslkerjhntkrujbnjtvntrjbslnt.lnbejrtbnrt.ktjnj";
	
	printf("ft_strcmp: %i\n", ft_strcmp(s1, s2));
	printf("strcmp   : %i\n", strcmp(s1, s2));
}
