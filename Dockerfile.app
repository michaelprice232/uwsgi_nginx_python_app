FROM python:3

WORKDIR /usr/src/app

COPY source/app.py .

RUN pip install uwsgi flask

EXPOSE 9090

ENTRYPOINT uwsgi --socket 0.0.0.0:9090 --wsgi-file app.py --callable app