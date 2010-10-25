# Class: demofile
#
#
class demofile {
	# resources
	file { "/Users/management/Desktop/puppettouched.me":
		ensure => file,
		content => 'And I didn\'t even feel it!',
	} # End of File
	
	file { "/etc/motd":
		ensure => file,
		content => 'I think you\'re lost - you should probably close Terminal\n.',
	} # End of File
	
	file { "/Users/management/Desktop/rubyscript.rb":
		ensure => file,
		source => 'puppet:///files/rubyexternalnode.rb',
		owner => 'management',
		group => 'staff',
		mode => 755,
	}
	
}# End of Class
