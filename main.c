/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ancoulon <ancoulon@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/19 11:11:54 by ancoulon          #+#    #+#             */
/*   Updated: 2021/02/16 10:56:44 by ancoulon         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "libasm.h"

int	main(void)
{
	printf("ft_strlen(\"\") = %d\n", ft_strlen(""));
	printf("ft_strlen(\"Hello World!\") = %d\n", ft_strlen("Hello World!"));
}
