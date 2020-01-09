/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: maperrea <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/09 19:52:21 by maperrea          #+#    #+#             */
/*   Updated: 2020/01/09 20:31:18 by maperrea         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *list, void *(*f)(void *), void (*del)(void *))
{
	t_list	*map;

	map = NULL;
	(void)del;
	while (list && list->content)
	{
		ft_lstadd_back(&map, ft_lstnew((*f)(list->content)));
		list = list->next;
	}
	return (map);
}
