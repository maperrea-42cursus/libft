/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: maperrea <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/08 10:47:28 by maperrea          #+#    #+#             */
/*   Updated: 2020/01/08 10:57:20 by maperrea         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strchr(const char *s, int c)
{
	int i;

	i = 0;
	if ((char)c == 0)
		return ((char *)&(s[ft_strlen(s)]));
	while (s[i])
	{
		if (s[i] == (char) c)
			return ((char *)&(s[i]));
		i++;
	}
	return (NULL);
}
