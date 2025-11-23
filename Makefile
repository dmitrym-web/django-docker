DOCKER_COMPOSE = docker-compose -f docker-compose.yml

build:
	${DOCKER_COMPOSE} build

up:
	${DOCKER_COMPOSE} up -d --remove-orphans

down:
	${DOCKER_COMPOSE} down -v --rmi=all --remove-orphans

start:
	${DOCKER_COMPOSE} start

stop:
	${DOCKER_COMPOSE} stop

migrate:
	${DOCKER_COMPOSE} exec web python manage.py migrate

createsuperuser:
	${DOCKER_COMPOSE} exec web python manage.py createsuperuser

startapp:
	 ${DOCKER_COMPOSE} exec web python manage.py startapp $(name)

app_bash:
	${DOCKER_COMPOSE} exec web bash

ps:
	${DOCKER_COMPOSE} ps

logs:
	${DOCKER_COMPOSE} logs -f

