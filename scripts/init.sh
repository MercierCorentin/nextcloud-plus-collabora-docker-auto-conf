#!/bin/bash

path=/DATA/docker/cloud

sed -i -e "s/domain_name/$1/g" ../collabora_nginx_conf/*
sed -i -e "s/domain_name/$1/g" ../docker-compose.yml

mkdir $path/collabora_nginx_conf
mkdir $path/cloud_data
mkdir $path/cloud_db_data

mv ../collabora_nginx_conf/* /DATA/docker/cloud/collabora_nginx_conf

docker build -t cloud:15.0 ../dockerfiles/nextcloud/
docker build -t collabora:6.0 ../dockerfiles/collabora/
docker pull postgres
docker pull nginx

cd ..

docker-compose up -d cloud cloud_collabora_nginx
