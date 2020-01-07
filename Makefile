# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: maperrea <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/07 10:56:01 by maperrea          #+#    #+#              #
#    Updated: 2020/01/07 13:28:30 by maperrea         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

vpath %.h include
vpath %.c src
vpath %.o obj

NAME		= libft.a

SRCS		= $(notdir $(shell find ${SRCDIR}/*.c))

SRCDIR		= src

OBJS		= ${SRCS:.c=.o}
	
OBJDIR		= obj

INCDIR		= inc

CC			= gcc

RM			= rm -f

CFLAGS		= -Wall -Wextra -Werror

.c.o:
			${CC} ${CFLAGS} -I${INCDIR} -c $^ -o ${OBJDIR}/$@

${NAME}:	${OBJS}
			ar rc ${NAME} $(addprefix ${OBJDIR}/,${OBJS})

all:		${NAME}

clean:
			${RM} $(addprefix ${OBJDIR}/,${OBJS})

fclean:		clean
			${RM} ${NAME}

re:			fclean all

.PHONY:		all clean fclean re
