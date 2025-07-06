# 0x13. Firewall

This project focuses on configuring a firewall on an Ubuntu server using `ufw` (Uncomplicated Firewall).

## Learning Objectives

- Understand what a firewall is and how it works
- Learn about different types of firewalls (stateful, stateless)
- Configure `ufw` to allow only specific ports

## Tasks

### 0. Block all incoming traffic but

**File:** `0-block_all_incoming_traffic_but`

- Install `ufw`
- Set default policy to deny all incoming traffic
- Allow incoming TCP connections on ports:
  - **22** (SSH)
  - **80** (HTTP)
  - **443** (HTTPS)

```bash
# Sample commands
sudo apt update
sudo apt install ufw -y
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow 443
sudo ufw enable
