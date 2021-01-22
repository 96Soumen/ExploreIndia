FROM python:3.8
WORKDIR /usr/src/app

COPY . .

RUN apt-get update && apt-get -y install libpq-dev 

RUN pip install pipenv

RUN pipenv install

RUN pipenv run python manage.py migrate

EXPOSE 3000


CMD [ "pipenv", "run", "python", "manage.py", "runserver", "3000" ]
