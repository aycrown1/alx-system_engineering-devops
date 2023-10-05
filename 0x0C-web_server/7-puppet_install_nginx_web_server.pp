# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Create Nginx configuration file
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "server {
    listen 80;
    server_name _;

    location / {
        root /var/www/html;
        index index.html;
    }

    location /redirect_me {
        return 301 https://www.youtube.com/;
    }
}",
  notify  => Service['nginx'],
}

# Create the document root directory
file { '/var/www/html':
  ensure => directory,
}

# Create an index.html file with the content "Hello World!"
file { '/var/www/html/index.html':
  ensure  => file,
  content => 'Hello World!',
}

# Enable Nginx site
exec { 'enable_nginx_site':
  command => '/bin/ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/',
  creates => '/etc/nginx/sites-enabled/default',
  require => [Package['nginx'], File['/etc/nginx/sites-available/default']],
  notify  => Service['nginx'],
}

# Start the service
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Exec['enable_nginx_site'],
}
