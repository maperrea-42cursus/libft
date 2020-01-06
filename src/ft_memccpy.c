/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   memccpy.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: maperrea <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/06 16:42:37 by maperrea          #+#    #+#             */
/*   Updated: 2020/01/06 18:20:49 by maperrea         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void *memccpy(void *dst, const void *src, int c, size_t n)
{
	size_t i;

	while (i < n)
	{
		((unsigned char *)dst)[i] = ((unsigned char *)src)[i];
		if (((unsigned char *)src)[i] = (unsigned char)c)
			return (&(((unsigned char *)dst)[i + 1])
		i++;
	}
	return (NULL);
}
