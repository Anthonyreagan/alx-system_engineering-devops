# 7-puppet_install_nginx_web_server.pp
class nginx_setup {

  # Ensure nginx is installed
  package { 'nginx':
    ensure => installed,
  }

  # Ensure nginx service is running and enabled at boot
  service { 'nginx':
    ensure     => running,
    enable     => true,
    hasrestart => true,
  }

  # Create index.html with Hello World!
  file { '/var/www/html/index.html':
    ensure  => file,
    content => "Hello World!\n",
    require => Package['nginx'],
  }

  # Ensure custom config is in place
  file { '/etc/nginx/sites-available/default':
    ensure  => file,
    content => template('nginx_setup/default.erb'),
    require => Package['nginx'],
    notify  => Service['nginx'],
  }
}

include nginx_setup
