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

# custom Nginx response header
file_line { 'add HTTP header':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_serve;',
  line   => 'add_header X-Served by $hostname:'
}

# Start the service
service { 'nginx':
  ensure  => 'running',
  enable  => 'true',
  require => Package['nginx']
}
