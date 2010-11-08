class demoprinter {

	exec { "psm_BOE_Edgeline":
		command => "/usr/sbin/lpadmin -p psm_BOE_Edgeline -L MJHS\ Office -D MJHS\ Main\ Office\ 9050\ Copier -v lpd://10.13.2.7/Main_Office_9050_Copier -P /Library/Printers/PPDs/Contents/Resources/HP\ LaserJet\ 9050.gz -E -o printer-is-shared=false",
		before => File["/etc/cups/ppd/psm_BOE_Edgeline.ppd"],
		unless => "/usr/bin/lpstat -a psm_BOE_Edgeline",
	}
	
	file { "/etc/cups/ppd/psm_BOE_Edgeline.ppd":
		owner => "root",
		group => "_lp",
		mode => 644,
		source => "puppet:///files/psm_BOE_Edgeline.ppd",
		ensure => present,
		require => Exec["psm_BOE_Edgeline"],
	}

} # End of Class