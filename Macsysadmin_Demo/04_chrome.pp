package {'googlechrome.dmg':
  ensure   => present,
  source   => "http://192.168.217.1/pkgs/googlechrome.dmg",
  provider => 'appdmg',
}
