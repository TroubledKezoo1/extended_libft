# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ysarac <yunusemresarac@yaani.com>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/24 23:10:39 by ysarac            #+#    #+#              #
#    Updated: 2024/02/29 05:51:38 by ysarac           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a

CC		= gcc
FLAGS	= -Wall -Wextra -Werror

RM		= rm -f

AR		= ar -rc

SRC 	=   ft_isalnum.c \
			ft_isalpha.c \
			ft_isascii.c \
			ft_isdigit.c \
			ft_isprint.c \
			ft_memcpy.c \
			ft_memset.c \
			ft_strchr.c \
			ft_strrchr.c \
			ft_tolower.c \
			ft_toupper.c \
			ft_strncmp.c \
			ft_memchr.c \
			ft_memcmp.c \
			ft_strnstr.c \
			ft_strlen.c \
			ft_bzero.c \
			ft_strdup.c \
			ft_atoi.c \
			ft_calloc.c \
			ft_strlcpy.c \
			ft_strlcat.c \
			ft_substr.c \
			ft_strjoin.c \
			ft_strtrim.c \
			ft_memmove.c \
			ft_putchar_fd.c \
			ft_putstr_fd.c \
			ft_split.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c \
			ft_itoa.c \
			ft_strmapi.c \
			ft_striteri.c

B_SRC 	= 	ft_lstnew_bonus.c \
			ft_lstadd_front_bonus.c \
			ft_lstsize_bonus.c \
			ft_lstlast_bonus.c \
			ft_lstadd_back_bonus.c \
			ft_lstdelone_bonus.c \
			ft_lstclear_bonus.c \
			ft_lstiter_bonus.c \
			ft_lstmap_bonus.c

OBJ		= $(SRC:%.c=%.o)

B_OBJ	= $(B_SRC:%.c=%.o)

GNL_OBJ =	get_next_line/get_next_line.o \
			get_next_line/get_next_line_utils.o

PRINTF_OBJ = ft_printf/ft_printf.o

$(NAME):
	@make libft -C ./get_next_line
	@make libft -C ./ft_printf
	@$(CC) $(FLAGS) -c $(SRC) $(B_SRC)
	@$(AR) $(NAME) $(OBJ) $(B_OBJ) $(PRINTF_OBJ) $(GNL_OBJ)
	@make clean
	
all: $(NAME)

clean:
	@make clean -C ./get_next_line
	@make clean -C ./ft_printf
	@$(RM) $(OBJ) $(B_OBJ)
	
fclean:
	@make fclean -C ./get_next_line
	@make fclean -C ./ft_printf
	@$(RM) $(OBJ) $(B_OBJ) $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re 
