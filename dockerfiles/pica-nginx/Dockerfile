FROM registry.picasoft.net:5000/pica-debian:latest
MAINTAINER antoine@barbare.me

RUN echo "deb http://packages.dotdeb.org stretch all" > /etc/apt/sources.list.d/dotdeb.list && \
wget -O- https://www.dotdeb.org/dotdeb.gpg | apt-key add - && \
apt-get update -y && apt-get install -y php7.0 php7.0-fpm php7.0-gd php7.0-xml nginx supervisor curl tar

RUN mkdir -p /run/nginx && \
    mkdir -p /var/www

ADD nginx.conf /etc/nginx/nginx.conf
ADD supervisord.conf /etc/supervisord.conf
ADD start.sh /start.sh

RUN echo "cgi.fix_pathinfo = 0;" >> /etc/php/7.0/fpm/php.ini && \
    sed -i -e "s|;daemonize\s*=\s*yes|daemonize = no|g" /etc/php/7.0/fpm/php-fpm.conf && \
    sed -i -e "s|listen\s*=\s*127\.0\.0\.1:9000|listen = /var/run/php-fpm7.sock|g" /etc/php/7.0/fpm/pool.d/www.conf && \
    sed -i -e "s|;listen\.owner\s*=\s*|listen.owner = |g" /etc/php/7.0/fpm/pool.d/www.conf && \
    sed -i -e "s|;listen\.group\s*=\s*|listen.group = |g" /etc/php/7.0/fpm/pool.d/www.conf && \
    sed -i -e "s|;listen\.mode\s*=\s*|listen.mode = |g" /etc/php/7.0/fpm/pool.d/www.conf && \    
    chmod +x /start.sh

EXPOSE 80

CMD /start.sh
