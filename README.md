# Nextcloud + Collabora Online under docker with traefik reverse-proxy

## Installation and configuration

Rename `.env-example` file to `.env` and fill it.

- `DOMAIN_NAME` is the domain name of your server.
- `DATABASE_NAME` name of your nextcloud's DB
- `DATABASE_USER` username for database user
- `DATABASE_PASS` password for database user
- `ADMIN_USER` Nextcloud admin username
- `ADMIN_PASS` Nextcloud admin password
  
Just run in the root of the repo folder:

```bash
    docker-compose build
    docker-compose up -d cloud cloud_collabora_nginx
```

## Naming information

Let's say that your domain name is `picasoft.net`.

### Subdomains

- Nextcloud: `cloud.picasoft.net`
- Collabora Online: `office.picasoft.net`

### Containers

- Nextcloud: `cloud`
- Nextcloud Database: `cloud_db`
- Collabora Nginx Reverse Proxy: `cloud_collabora_nginx`
- Collabora Online: `cloud_collabora`
