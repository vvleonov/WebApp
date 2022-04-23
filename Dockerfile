FROM nginx:alpine

COPY ./requirements.txt requirements.txt
RUN apk --update add git python3-minimal python3-setuptools && \
pip install -r /var/www/requirements.txt
