
all:
	@cd srcs && docker-compose up -d ;

build:
	@cd srcs && docker-compose build

down:
	@cd srcs && docker-compose down;

dock:
	curl https://get.docker.com
.PHONY: clean all