FROM tiangolo/uwsgi-nginx:python3.8-alpine

COPY ./requirements.txt /var/www/requirements.txt
RUN apk --update add git && \
pip install -r /var/www/requirements.txt
