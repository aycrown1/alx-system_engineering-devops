# The error 500 was cause by a wrong extention of the `class-wp-locale.php` file
# our manifest is to replace the occurance of `phpp` in the /var/www/html/wp-settings.php
file { '/var/www/html/wp-settings.php':
  ensure  => file,
  content => file('/var/www/html/wp-settings.php').content.gsub('phpp', 'php'),
}