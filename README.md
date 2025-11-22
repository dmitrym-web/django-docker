[За оснеову взята статья с официального сайта Django framework](https://learndjango.com/tutorials/django-docker-and-postgresql-tutorial)

Копируем с репозитория проект

`git clone git@github.com:dmitrym-web/django-docker.git`

Переходим в директорию проекта.

`cd django-docker`

Использум утилиту make, чтобы управлять проектом. Собираем образы приложения.

`make build`

Запускаем проект.

`make up`

Переходим по ссылке.

http://127.0.0.1:8000/

Если вы видете главную страницу, как на изображении, все работает.

![Local Image](./images/main_page.png)

Запускам миграцию.

`make migrate`

Создаем суперпользователя, введя имя, электорнную почту и пароль.

`make createsuperuser`

Переходим по ссылке а админку

http://127.0.0.1:8000/admin/

![Local Image](./images/login_form.png)

Вводим имя и пароль, попадаем в панель управления.

![Local Image](./images/admin.png)
