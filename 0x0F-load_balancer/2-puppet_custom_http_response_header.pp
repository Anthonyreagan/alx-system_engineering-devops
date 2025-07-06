# 2-puppet_custom_http_response_header.pp
package { 'nginx':
  ensure => installed,
}

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => @(EOF),
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    server_name _;

    location / {
        add_header X-Served-By \$hostname;
        root /var/www/html;
        index index.html index.htm index.nginx-debian.html;
    }
}
  | EOF
  notify  => Service['nginx'],
}

service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/sites-available/default'],
}
