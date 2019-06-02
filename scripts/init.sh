#!/bin/bash

sed -i -e 's/domain_name/$1/g' ../collabora_nginx_conf/*

mkdir /DATA
mkdir /DATA/docker/
mkdir /DATA/docker/cloud
mkdir /DATA/docker/cloud/collabora_nginx_conf
mkdir /DATA/docker/cloud/cloud_data
mkdir /DATA/docker/cloud/cloud_db_data

mv ../collabora_nginx_conf/* /DATA/docker/cloud/collabora_nginx_conf