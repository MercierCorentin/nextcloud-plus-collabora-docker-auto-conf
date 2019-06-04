FROM nginx:latest

ARG domain_name=example.net

ADD init.sh /
ADD conf/nginx.conf /etc/nginx/
ADD conf/default /etc/nginx/sites-available/

RUN bash init.sh $domain_name
