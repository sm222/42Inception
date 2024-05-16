VOLUME_DIR    = /home/${USER}/data
WORDPRESS_DIR = $(VOLUME_DIR)/wordpress
MARIADB_DIR   = $(VOLUME_DIR)/mariadb



all: dir build up

build:
	docker compose -f ./srcs/docker-compose.yml build

dir:
	mkdir -p $(VOLUME_DIR) $(MARIADB_DIR) $(WORDPRESS_DIR)

up:
	docker compose -f ./srcs/docker-compose.yml up

down:
	docker compose -f ./srcs/docker-compose.yml down

start:
	docker compose -f ./srcs/docker-compose.yml start

stop:
	docker compose -f ./srcs/docker-compose.yml stop

logs:
	docker compose -f ./srcs/docker-compose.yml logs

ps:
	docker ps

db:
	docker exec -it mariadb bash

wp:
	docker exec -it wordpress bash

nginx:
	docker exec -it nginx bash

clean:
	sudo rm -rf $(WORDPRESS_DIR) $(MARIADB_DIR) $(VOLUME_DIR)

fclean: clean
	@./nuke.sh

.PHONY: clean all

