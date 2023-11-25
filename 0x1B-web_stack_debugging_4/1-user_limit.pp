# Increase the desired open file limits for the holberton user
exec { 'update_limits_conf':
  command => 'sudo sed -iE -e "s/^holberton hard nofile 5\
  /holberton hard nofile \ 
  4096/" -e "s/^holberton soft nofile 4\
  /holberton soft nofile 4096/" /etc/security/limits.conf',
  path    => ['/bin/', '/usr/bin/'],
}