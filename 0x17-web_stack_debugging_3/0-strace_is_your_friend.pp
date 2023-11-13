# The error 500 was cause by a wrong extention of the `class-wp-locale.php` file
# our manifest is to replace the occurance of `phpp` in the /var/www/html/wp-settings.php
exec { 'replace_phpp_with_php':
  command => "sed -i 's/phpp/php/' /var/www/html/wp-settings.php",
}