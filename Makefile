NAME_SERVER = server
NAME_CLIENT = client

### SRC SERVER

PATH_SRCS_SERVER = srcs/server/

SRCS_SERVER += main.c
SRCS_SERVER += server.c

### SRCS CLIENT

PATH_SRCS_CLIENT = srcs/client/

### HEADER

INCLUDES_MINITALK = includes/

INCLUDES += -I $(INCLUDES_MINITALK)

### OBJS

PATH_OBJS = objs/

OBJS = $(patsubst %.c, ${PATH_OBJS}/%.o, ${SRCS})

### COMPILATION

CC = clang
CFLAGS += -Werror
CFLAGS += -Wall
CFLAGS += -Wextra

### RULE

all: $(NAME_SERVER) $(NAME_CLIENT)




