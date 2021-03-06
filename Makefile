FILE=srcs/docker-compose.yml
NAMES = mariadb nginx wordpress adminer redis website teamspeak ftp
VLM = `docker volume ls -q`
all:
	docker-compose -f  $(FILE) up -d --build
	docker ps

clean:
	docker-compose -f $(FILE) down
rmimg:
	docker rmi -f $(NAMES)

rmvol:
	docker volume rm $(VLM)

fclean: clean  rmimg rmvol

re: fclean all
