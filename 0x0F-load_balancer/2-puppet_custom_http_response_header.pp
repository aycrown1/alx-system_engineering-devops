# Update Ubuntu server
exec { 'update server':
  command => 'apt-get update',
  user    => 'root',
  provider => 'shell',
}

# Install Nginx server on a remote server
package { 'nginx':
  ensure   => present,
  provider => 'apt',
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
    add_header X-Served-By $hostname;
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
file { '/etc/nginx/sites-enabled/default':
  ensure => link,
  target => '/etc/nginx/sites-available/default',
  require => [Package['nginx'], File['/etc/nginx/sites-available/default']],
  notify  => Service['nginx'],
}

# Start the service
service { 'nginx':
  ensure  => 'running',
  enable  => 'true',
  require => File['/etc/nginx/sites-enabled/default'],
}
