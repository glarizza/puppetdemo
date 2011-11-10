$configfile = 'Settings_for_Demo_User.mobileconfig'
$configpath = "/tmp/${configfile}"

file { $configpath:
  ensure => present,
  source => "/Volumes/VMware Shared Folders/Demo/${configfile}",
  notify => Exec['install-profiles'],
}

exec { 'install-profiles':
  command     => "/usr/bin/profiles -I -F ${configpath}",
  refreshonly => true,
  user        => 'glarizza',
}
