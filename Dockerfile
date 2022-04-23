FROM tiangolo/uwsgi-nginx:python3.8-alpine

COPY ./requirements.txt /var/www/requirements.txt
RUN apt-get update && apt-get -y install git && \
pip install -r /var/www/requirements.txt
