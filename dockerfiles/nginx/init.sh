#!/bin/bash

sed -i -e "s/domain_name/$1/g" /etc/nginx/site-available/default
sed -i -e "s/domain_name/$1/g" /etc/nginx/nginx.conf

