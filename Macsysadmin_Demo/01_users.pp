user { 'testuser':
	comment 	 => "Demonstration User",
	home 		   => "/Users/testuser",
	ensure 		 => present,
	shell 		 => "/bin/bash",
	uid 		   => '1026',
	gid 		   => '20',
}

