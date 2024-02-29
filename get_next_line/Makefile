NAME = libftgetnextline.a

CC = cc
CFLAGS = -Wall -Wextra -Werror
RM = rm -f
AR = ar rcs
SRC =	get_next_line.c \
		get_next_line_utils.c

OBJ = $(SRC:%.c=%.o)

all: $(NAME)

$(NAME):
	@$(CC) $(CFLAGS) -c $(SRC)
	@$(AR) $(NAME) $(OBJ)
	@make clean


clean:
	@$(RM) $(OBJ)

fclean: clean
	@$(RM) $(OBJ) $(NAME)

libft:
	@$(CC) $(CFLAGS) -c $(SRC)

re: fclean all

.PHONY: all clean fclean re libft