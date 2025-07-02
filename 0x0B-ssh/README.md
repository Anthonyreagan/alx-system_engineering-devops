# SSH Connection Setup

This project demonstrates SSH authentication using RSA key pairs.

## Requirements
- Private key: `~/.ssh/school`
- Server IP: `44.207.2.54`
- Username: `ubuntu`

## Setup Instructions

1. **Verify your SSH keys**:
   ```bash
   ssh-keygen -lf ~/.ssh/school.pub
   ssh-keygen -lf ~/.ssh/school