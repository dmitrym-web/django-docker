
build:
	docker build .

up:
	docker-compose up -d

down:
	docker-compose down

migrate:
	docker-compose exec web python manage.py migrate

createsuperuser:
	docker-compose exec web python manage.py createsuperuser

startapp:
	 docker-compose exec web python manage.py startapp $(name)

app_bash:
	docker-compose exec web bash