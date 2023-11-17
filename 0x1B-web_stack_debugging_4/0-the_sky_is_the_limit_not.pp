# Increasing the ulimit value in /etc/default/nginx

exec { 'Increase Linit':
  path    => ['/bin/'],
  command => 'sed -i "s/-n 15/-n 4096/" /etc/default/nginx',
  notify  => Service['nginx']
}

service { 'nginx':
  ensure => running,
  enable => true
}