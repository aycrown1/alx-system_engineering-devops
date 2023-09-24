# making changes to config file using Puppet

file { '/etc/ssh/ssh_config':
  ensure  => present,
  content => "Host *\n\
              PasswordAuthentication no\n\
              IdentityFile ~/.ssh/school\n",
  owner   => 'ubuntu',
  group   => 'ubuntu',
  mode    => '0644',
}