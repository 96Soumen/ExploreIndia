FROM python:3
WORKDIR /usr/src/app

COPY . .



RUN pip install pipenv

RUN pipenv install

EXPOSE 3000

CMD [ "pipenv", "run", "python", "runserver", "3000" ]
