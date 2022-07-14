# Apache is returning a 200 not 500
# Puppet code 


exec {'phpp php':
  command => 'sed -i "s/.phpp/.php/g"  /var/www/html/wp-settings.php',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  onlyif  => 'test -f /var/www/html/wp-settings.php'
}
