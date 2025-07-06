# 7-puppet_install_nginx_web_server.pp

# Update package index
exec { 'apt-update':
  command => '/usr/bin/apt-get update',
}

# Install Nginx
package { 'nginx':
  ensure  => installed,
  require => Exec['apt-update'],
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}

# Create the default HTML file with Hello World!
file { '/var/www/html/index.html':
  content => '<html><body><h1>Hello World!</h1></body></html>',
  require => Package['nginx'],
}

# Configure Nginx to include the redirect
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    index index.html index.htm;

    server_name _;

    location / {
        try_files \$uri \$uri/ =404;
    }

    location /redirect_me {
        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
    }
}
  ",
  require => Package['nginx'],
  notify  => Service['nginx'],
}