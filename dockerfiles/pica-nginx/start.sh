#!/usr/bin/env sh

set -e

chown -R www-data /var/www
mkdir -p /var/run/php
exec /usr/bin/supervisord -c /etc/supervisord.conf
