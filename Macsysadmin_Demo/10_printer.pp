$darwinprintgroup    = $macosx_productversion_major ? {
  "10.4"    => "lp",
  default   => "_lp",
}

case $operatingsystem {
  "centos": {
    $ppd_path     = "/usr/share/cups/model/foomatic-db-ppds"
    $print_group  = "root"
    $print_owner  = "root"
  }
  "darwin": {
    $ppd_path   = "/Library/Printers/PPDs/Contents/Resources"
    $print_group  = $darwinprintgroup
    $print_owner  = "root"
  }
}

$printer_name        = $operatingsystem ? {
  darwin    => "psm_HHS_Office_9050",
  centos    => "HHS_Main_Office_Copier",
}
$printer_ppd         = "psm_HHS_Office_9050.ppd"
$printer_location    = "HHS Main Office"
$printer_destination = "HHS Main Office Copier"
$lpd_ip              = "lpd://10.13.1.8/HHS_Office_9050_Printer"
$hp_lj9050_driver    = "HP LaserJet 9050.gz"
$hp_lj9050_path      = "${ppd_path}/HP/mono_laser/${hp_lj9050_driver}"
$options             = "printer-is-shared=false"
$printer_check       = "/usr/bin/lpstat -a ${printer_name}"
$printer_command     = "/usr/sbin/lpadmin -p ${printer_name} -L '${printer_location}' -D '${printer_destination}' -v ${lpd_ip} -P '${hp_lj9050_path}' -E -o ${options}"

file { ["${ppd_path}/HP", "${ppd_path}/HP/mono_laser"]:
  ensure => directory,
}

file { "HP Laserjet 9050 Driver":
    name   => $hp_lj9050_path,
    source => "/Volumes/VMware Shared Folders/Shared/PPDs/${hp_lj9050_driver}",
    ensure => present,
    mode   => '0664',
    owner  => $print_owner,
    group  => $print_group,
    before => Exec['HHS_Main_Office_Copier'],
}

exec { "HHS_Main_Office_Copier":
  command   => $printer_command,
  before    => File["/etc/cups/ppd/${printer_ppd}"],
  unless    => $printer_check,
}

file { "/etc/cups/ppd/$printer_ppd":
  owner     => "${print_owner}",
  group     => "${print_group}",
  mode      => '0644',
  source    => "/Volumes/VMware Shared Folders/Shared/PPDs/${printer_ppd}",
  ensure    => 'present',
  require   => Exec["HHS_Main_Office_Copier"],
}
