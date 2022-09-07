NAME		= inception
COMPOSE		= docker-compose
PATH_COMPOSE	= -f srcs/docker-compose.yml

all: ${NAME}

${NAME}:
	@cat /etc/hosts | if ! grep -P "127.0.0.1\tvazra.42.fr"; then sudo sh -c 'echo "127.0.0.1\tvazra.42.fr" >> /etc/hosts'; fi
	@sudo mkdir -p /home/vazra/data/wordpress
	@sudo mkdir -p /home/vazra/data/mariadb
	${COMPOSE} ${PATH_COMPOSE} up -d --build

stop:
	${COMPOSE} ${PATH_COMPOSE} stop

down:
	${COMPOSE} ${PATH_COMPOSE} down

.PHONY: all down
