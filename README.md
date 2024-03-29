# Nextcloud + Collabora Online auto-configuration under docker with traefik reverse-proxy

## Introduction

This configuration helps starting all containers for a Nextcloud + Collabora Online instance.
It builds all needed images with right configuration and goes further in the auto-configuration of Nextcloud. Indeed it installs and configures Collabora Online App.

Why this? Originally it was to test my laravel package: [Nextcloud User provisionning API client](https://github.com/MercierCorentin/laravel-nextcloud-api-client)

## Installation and configuration

Rename `.env-example` file to `.env` and fill it.

- `DOMAIN_NAME` is the domain name of your server.
- `DOTS_ESCAPED_DOMAIN_NAME` is the domain name with slashes before dots. Example: `mysubdomain\.mydomain\.com`
- `NEXTCLOUD_VERSION` value of nextcloud version. Supported: `15`, `16` or `17`
- `DATABASE_NAME` name of your nextcloud's DB
- `DATABASE_USER` username for database user
- `DATABASE_PASS` password for database user
- `ADMIN_USER` Nextcloud admin username
- `ADMIN_PASS` Nextcloud admin password
- `SMTP_HOST` smtp sever domain name
- `SMTP_SECURE` smtp encryption
- `SMTP_PORT` smtp port
- `SMTP_AUTHTYPE` NONE | LOGIN | PLAIN
- `SMTP_NAME` SMTP username
- `SMTP_PASSWORD` SMTP password
- `MAIL_FROM_ADDRESS` part of the mail adress (before `@`) you want in the From header of all sended emails
- `MAIL_DOMAIN` part of the mail adress (after `@`) you want in the From header of all sended emails
  
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

## What's next? 

- [X] Nextcloud 16.0 support.
- [X] Nextcloud 17.0 support
- [X] Mail autoconfig
- [ ] More advanced language configuration. (FR and EN available on collabora online personnal image)
- [ ] Naming configuration?

For any advice/help/suggestion don't hesitate to contact me or contribute.
