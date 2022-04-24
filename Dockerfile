FROM nginx:alpine

COPY ./requirements.txt requirements.txt
RUN apk --update add git && \
pip install -r /var/www/requirements.txt
