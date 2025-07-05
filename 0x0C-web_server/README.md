# 0x0C. Web Server

## Description

This project is part of the ALX System Engineering DevOps curriculum. It focuses on setting up and configuring web servers using Nginx and automating tasks like file transfer to remote servers.

## Learning Objectives

- Understand what a domain name is and how DNS works
- Differentiate between the root domain and subdomains
- Set up a web server (using Nginx)
- Use the `/etc/hosts` file to redirect domains locally
- Manage web server configuration files
- Automate file deployment to a server using Bash and `scp`

## Files

| File              | Description                                      |
|-------------------|--------------------------------------------------|
| `0-transfer_file` | Bash script to transfer a file to a remote server |

## Usage

To run the `0-transfer_file` script:

```bash
./0-transfer_file PATH_TO_FILE SERVER_IP USERNAME SSH_PRIVATE_KEY
