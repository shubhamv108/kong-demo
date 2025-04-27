.PHONY: help build up down clean

COMPOSE_FILE=compose.yaml

help:
	@echo "Available commands:"
	@echo "  build    - Build docker-compose services"
	@echo "  up       - Start docker-compose services"
	@echo "  down     - Stop docker-compose services"
	@echo "  clean    - Stop and remove all docker containers, images, volumes"

build:
	docker compose -f $(COMPOSE_FILE) build

up:
	docker compose -f $(COMPOSE_FILE) up -d

down:
	docker compose -f $(COMPOSE_FILE) down --volumes

clean:
	docker rm -vf $$(docker ps -aq) || true
	docker rmi -f $$(docker images -aq) || true
	docker volume prune -f || true

restart: down build up

setup: build up
