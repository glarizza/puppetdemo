#/etc/puppet/manifests/classes/demofiles/demopackage.pp

# Class: demopackage
#
#
class demopackage {
	# Package Variables
	$GEarth = "GoogleEarth.dmg"
	$firefox = "Firefox3.6.dmg"
	$Office = "Office2008.dmg"
	$OfficeU1 = "Office2008-1220UpdateEN.dmg"
	$OfficeU2 = "Office2008-1223UpdateEN.dmg"
	
	# Set Package resource defaults for OS X clients
	Package{ensure => installed,provider => pkgdmg}	
	
	# Package Call
	package { "$GEarth":
		source => "http://127.0.0.1/packages/$GEarth",
	}
	
	package { "$firefox":
		provider => appdmg,
		source => "http://127.0.0.1/packages/$firefox",
	}

	# package { "$Office":
	# 	source => "http://127.0.0.1/packages/$Office",
	# 	before => Package[$OfficeU1],
	# }
	# 
	# package { "$OfficeU1":
	# 	source => "http://127.0.0.1/packages/$OfficeU1",
	# 	require => Package[$Office],
	# 	before => Package[$OfficeU2],
	# }
	# 	
	# package { "$OfficeU2":
	# 	source => "http://127.0.0.1/packages/$OfficeU2",
	# 	require => Package[$OfficeU1],
	# }	
}
