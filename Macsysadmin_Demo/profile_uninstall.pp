$configfile = 'Settings_for_Demo_User.mobileconfig'
$configpath = "/tmp/${configfile}"

exec { 'uninstall-profiles':
  command     => "/usr/bin/profiles -R -F ${configpath}",
  user        => 'glarizza',
}
