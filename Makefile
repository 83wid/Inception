FILE=srcs/docker-compose.yml
NAMES = mariadb nginx wordpress adminer
VLM = `docker volume ls -q`
all:
	docker-compose -f  $(FILE) up -d

clean:
	docker-compose -f $(FILE) down
rmimg:
	docker rmi -f $(NAMES)

rmvol:
	docker volume rm $(VLM)

fclean: clean  rmimg rmvol

re: fclean all
