# Second step

## Install pip3 packages for using Docker in Ansible
```shell
cd ~/jmeter-obs/
# you should be in venv
source venv/bin/activate 
cd ~/jmeter-obs/django-polls-postgresql
pip install --upgrade pip # upgrade pip to avoid issue
pip3 install psycopg2-binary  # install postgresql interface for python
pip3 install django 
pip3 install docker  # install docker packages for Python
pip3 install docker-compose # install docker-compose
docker-compose version  

## install postgresql 12 docker container
```shell script
docker run -d --name db -e POSTGRES_PASSWORD=password  -v /opt/postgres:/var/lib/postgresql/data \
  -p 30432:5432  systemdevformations/docker-postgres12
```


## Add network
```shell
docker network inspect bridge
sudo vi /etc/hosts
# add  ip-db  db 
```

##  Create database polls
```shell
CREATE DATABASE polls;
```

## Run django app
```shell
python3 manage.py makemigrations  # detect changes
python3 manage.py migrate # create database schema
python3 manage.py createsuperuser # set superuser username and password
python3 manage.py runserver 0:8000 # sanity test and enter your first poll 
#  use username and password you have already created
http://<ip_address_vm>:8000/admin
# add a poll question
```

## Load some data 
In goland, use the database tab on right-hand side.   
Set a postgresql database connection  
Right-click on the table polls_choice and select Import Data from  File  
Select the file to load in the directory data the table polls_question 
Do the same with postgres_public_polls_choice.csv 


## Jmeter 
Recorder
.*\.(txt|bmp|css|js|gif|ico|jpe?g|png|swf|woff|woff2|ttf|svg|firefox.com).*
.*\.(txt|bmp|css|js|gif|ico|jpe?g|png|swf|woff|woff2|ttf|svg).*

## Plugins manager 
Download
https://jmeter-plugins.org/get/  

add dummy sampler