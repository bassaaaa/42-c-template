# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tsito <tsito@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/03/15 22:00:39 by tsito             #+#    #+#              #
#    Updated: 2026/03/26 22:00:56 by tsito            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = program

CC = cc
CFLAGS = -Wall -Wextra -Werror

SRCS_DIR = src
INCLUDES_DIR = inc

SRCS =
OBJS = $(addprefix $(SRCS_DIR)/, $(SRCS:.c=.o))

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) -I $(INCLUDES_DIR) -o $(NAME) $(OBJS)

clean:
	rm -f $(OBJS)

fclean: clean
    rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re

