# Mind the Overrides --> /var/db/launchd.db/com.apple.launchd/overrides.plist
# 
# service {'com.openssh.sshd':
#   ensure => 'running',
#   enable => 'true',
# }

service {'com.openssh.sshd':
 ensure => 'stopped',
 enable => 'false',
}
