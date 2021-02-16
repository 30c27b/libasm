/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ancoulon <ancoulon@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/19 11:12:10 by ancoulon          #+#    #+#             */
/*   Updated: 2021/02/16 16:06:45 by ancoulon         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

size_t	ft_strlen(const char *s);

int		ft_strcmp(const char *s1, const char *s2);

char	*ft_strcpy(char *dst, const char *src);

ssize_t	ft_read(int fildes, void *buf, size_t nbyte);

ssize_t	ft_write(int fildes, const void *buf, size_t nbyte);

char	*ft_strdup(const char *s1);

#endif
