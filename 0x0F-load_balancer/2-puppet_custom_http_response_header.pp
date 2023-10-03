# Ensure Nginx is installed
package { 'nginx':
  ensure => installed,
}

# Start the Nginx service
service { 'nginx':
  ensure => running,
  enable => true,
  require => Package['nginx'],
}

# Create a custom HTTP header response
file { '/etc/nginx/conf.d/custom_header.conf':
  ensure  => present,
  content => "add_header X-Served-By $::hostname;",
  notify  => Service['nginx'],
}

# Reload Nginx to apply the changes
exec { 'reload_nginx':
  command     => '/usr/sbin/nginx -s reload',
  refreshonly => true,
  subscribe   => File['/etc/nginx/conf.d/custom_header.conf'],
}