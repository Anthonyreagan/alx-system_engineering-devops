# 0x0F. Load balancer

This project focuses on setting up load-balanced web infrastructure using multiple web servers. The main goals are:

- Setting up two identical Nginx web servers (`web-01` and `web-02`)
- Adding a custom HTTP response header `X-Served-By` to identify the serving server
- Configuring a load balancer (in later tasks)

## Task: 0. Double the number of webservers

This task ensures `web-02` is identical to `web-01` and that both respond with a custom header to help test load balancing behavior.

### Requirements

- Install Nginx
- Add a custom header `X-Served-By` with the server's hostname
- Make sure both web servers are ready to be placed behind a load balancer

### Script: `0-custom_http_response_header`

This script:
- Installs Nginx
- Adds a custom header with the hostname
- Restarts Nginx to apply changes

### Example Usage

```bash
curl -sI http://<server-ip> | grep X-Served-By
