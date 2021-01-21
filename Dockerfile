FROM python:3
WORKDIR /usr/src/app

COPY . .

EXPOSE 3000

RUN pip install pipenv

RUN pipenv install

CMD [ "pipenv", "run", "python", "create_admin.py" ]

RUN pipenv run python manage.py migrate

CMD [ "pipenv", "run", "python", "runserver", "3000" ]