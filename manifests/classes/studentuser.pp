class studentuser {

# User { provider => "directoryservice" }

user { 'students':
	comment 	=> 'Student User',
	home 		=> '/Users/students',
	gid 		=> '20',
	ensure 		=> 'present',
	uid 		=> '502',
	password 	=> '0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000D34561F882B4BF7F93B1BE6DD1A7458A40C4FD0BF9057FC0000000000000000000000',
	shell 		=> '/bin/bash';
	}

} # End of Class
