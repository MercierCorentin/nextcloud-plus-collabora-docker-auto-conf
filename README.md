# Nextcloud + Collabora Online under docker with traefik reverse-proxy

## Installation

- Launch `./scripts/init.sh domain_name` (replace `domain_name` by your domain name)

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
