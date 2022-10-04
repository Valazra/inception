NAME		= inception
COMPOSE		= docker compose #sur la VM de l'ecole on a mis un plugin donc pas besoin du tiret. Pour la VM sur mon PC il faut mettre un tiret entre docker et compose
PATH_COMPOSE	= -f srcs/docker-compose.yml

all: ${NAME}

${NAME}:
	@cat /etc/hosts | if ! grep -P "127.0.0.1\tvazra.42.fr"; then sudo sh -c 'echo "127.0.0.1\tvazra.42.fr" >> /etc/hosts'; fi
	@sudo mkdir -p /home/vazra/data/wordpress
	@sudo mkdir -p /home/vazra/data/mariadb
	${COMPOSE} ${PATH_COMPOSE} up -d --build

stop:
	${COMPOSE} ${PATH_COMPOSE} stop

down:	stop
	${COMPOSE} ${PATH_COMPOSE} down

fclean:	down
	rm -rf /home/vazra/
	docker volume rm srcs_mariadb-volume
	docker volume rm srcs_wordpress-volume
	docker system prune -af

.PHONY: all stop down fclean
