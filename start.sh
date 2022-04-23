#!/bin/bash
app="WebApp"
docker build -t ${app} .
docker run -d -p 32777:80 \
  --name=${app} \
  -v $PWD:/app ${app}