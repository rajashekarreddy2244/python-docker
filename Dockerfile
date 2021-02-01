FROM python:3.8-slim-buster

WORKDIR /app

RUN apt-get -y update; apt-get install -y curl

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY app.py app.py

ENV FLASK_APP=app.py

CMD ["flask", "run", "--host", "0.0.0.0"]