# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jochang <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/19 00:11:05 by jochang           #+#    #+#              #
#    Updated: 2018/05/23 15:59:25 by jochang          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fillit

SRC = main.c \
	  display.c \
	  place_pieces.c \
	  fillit.c \
	  ft_list_fun.c \
	  read_tet.c \

OBJ = $(SRC:.c=.o)

INC = fillit.h

CC = clang-6.0
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME):
	make -C libft
	$(CC) -g $(CFLAGS) -c $(SRC) -I $(INC)
	$(CC) -g -o $(NAME) $(MAIN) $(OBJ) -L ./libft/ -lft

clean:
	make -C libft clean
	rm -f $(OBJ)

fclean: clean
	make -C libft fclean
	rm -f $(NAME)

re: fclean all
