#!/usr/bin/make -f

# Ensuring we always run these despite any naming collisions that may happen in our root directory
.PHONY: build up down restart clean

srcdir = .

base_compose = -f $(srcdir)/docker-compose.yml

build :
	docker-compose $(base_compose) build --build-arg=DATABASE_USER=$(USER)

up :
	docker-compose $(base_compose) up -d

down :
	docker-compose $(base_compose) down --remove-orphans

restart :
	docker-compose $(base_compose) restart

clean :
	docker image prune -f
	docker volume prune --filter=label!=local.keep=True -f
