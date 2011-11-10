file { '/etc/motd':
  ensure  => present,
  content => "Host:\t\t${fqdn}\nOS X:\t\t${macosx_productversion}\nPuppet:\t\t${puppetversion}\nRuby:\t\t${rubyversion}\nFacter:\t\t${facterversion}\n",
  mode    => '0644',
  owner   => '0',
  group   => '0',
}
