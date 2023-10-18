# Update the package repository
exec { 'update':
  command => 'apt-get update',
  path    => ['/bin', '/usr/bin/', '/usr/local/bin'],
}

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure => running,
  enable => true,
  require => Package['nginx'],
}

# Create the document root directory
file { '/etc/nginx/html':
  ensure => directory,
}

# Create a custom 404 page
file { '/etc/nginx/html/404.html':
  ensure  => file,
  content => "Ceci n'est pas une page\n",
}

# Configure Nginx default site
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "server {
    listen 80;
    listen [::]:80 default_server;
    root   /etc/nginx/html;
    index  index.html index.htm;

    location /redirect_me {
        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
    }

    error_page 404 /404.html;
    location /404 {
        root /etc/nginx/html;
        internal;
    }
    add_header X-Served-By ${::hostname};
}\n",
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Create an index.html file with "Hello World!" content
file { '/etc/nginx/html/index.html':
  ensure  => file,
  content => 'Hello World!\n',
}

# Test the Nginx configuration
exec { 'nginx-test':
  command => 'nginx -t',
  path    => ['/bin', '/usr/bin', '/usr/sbin'],
  require => File['/etc/nginx/sites-available/default'],
  notify  => Service['nginx'],
}

# Reload Nginx service to apply the changes
exec { 'nginx-reload':
  command => 'service nginx reload',
  path    => ['/bin', '/usr/bin', '/usr/sbin'],
  require => Exec['nginx-test'],
}