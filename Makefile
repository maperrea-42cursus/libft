# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: maperrea <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/07 10:56:01 by maperrea          #+#    #+#              #
#    Updated: 2020/01/11 11:02:14 by maperrea         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

vpath %.h inc
vpath %.c src
vpath %.c bonus
vpath %.o obj

NAME		= libft.a

SRCDIR		= src

SRCS		= $(notdir $(shell find ${SRCDIR}/*.c))

BONUSDIR	= bonus

BONUS		= $(notdir $(shell find ${BONUSDIR}/*.c))

OBJDIR		= obj
	
OBJS		= ${SRCS:.c=.o}

BONUSOBJS	= ${BONUS:.c=.o}

INCDIR		= inc

CC			= gcc

RM			= rm -f

CFLAGS		= -Wall -Wextra -Werror

.c.o:
			$(shell mkdir -p ${OBJDIR})
			${CC} ${CFLAGS} -I${INCDIR} -c $^ -o ${OBJDIR}/$@

${NAME}:	${OBJS}
			ar rc ${NAME} $(addprefix ${OBJDIR}/,${OBJS})

all:		${NAME}

bonus:		${OBJS} ${BONUSOBJS}
			ar rc ${NAME} $(addprefix ${OBJDIR}/,${OBJS} ${BONUSOBJS})

clean:
			${RM} -r ${OBJDIR}
#			${RM} $(addprefix ${OBJDIR}/,${OBJS} ${BONUSOBJS})
#			$(shell rmdir --ignore-fail-on-non-empty obj)

fclean:		clean
			${RM} ${NAME}

re:			fclean all

.PHONY:		all clean fclean re
