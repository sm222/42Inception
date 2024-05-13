
all:
	@cd srcs && docker-compose up -d ;

build:
	@cd srcs && docker-compose build

down:
	@cd srcs && docker-compose down;

dock:
	curl https://get.docker.com
.PHONY: clean all



#####################################################
# DIR := srcs/                                      
# DATA_DIR = /home/$(USER)/data                     
# WP_DIR = /home/$(USER)/data/wordpress             
# MA_DIR = /home/$(USER)/data/mariadb               
#                                                   
# DC := docker compose -f $(DIR)docker-compose.yml  
#                                                   
#       $(DATA_DIR): 
#       	@mkdir -p ${DATA_DIR}
#       
#       $(WP_DIR): $(DATA_DIR)
#       	@mkdir -p ${WP_DIR}
#       
#       $(MA_DIR): $(DATA_DIR)
#       	@mkdir -p ${MA_DIR}
#                                                   
#                                                   
#                                                   
#                                                   
# - - - docker ps                                   
#                                                   
##################################################### 


