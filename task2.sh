#!/bin/bash

echo "FROM python:3" > Dockerfile
echo "RUN pip3 install django" >> Dockerfile
echo "COPY . ." >> Dockerfile
echo "RUN python manage.py migrate" >> Dockerfile
echo 'CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]' >> Dockerfile

sudo docker build . -t textutils

sudo docker run -p 8001:8001 -d textutils

echo "Docker running."
