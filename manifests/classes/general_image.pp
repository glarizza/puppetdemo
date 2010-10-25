# /etc/puppet/manifests/classes/general_image.pp

class general_image {

	# Package Names
	$facter = "facter.1.5.7.dmg"
	$puppetcurrent = "puppet-0.25.4.dmg"
	$textwrangler = "TextWrangler_3.0.dmg"
	$firefox = "Firefox3.6.dmg"
	$firstclass = "Firstclass20100621.dmg"

	# Set Package resource defaults for OS X clients
	Package{ensure => installed,provider => pkgdmg}

	# Package Calls
	# package{"$facter": 
	# 	source => "$pkg_base/$facter",
	# 	require => Package[$puppetcurrent],
	# 	}
	# package{"$firstclass": source => "$pkg_base/$firstclass",}
	# package{"$puppetcurrent":
	# 	source => "$pkg_base/$facter",
	# 	before => Package[$facter],
	# 	}
	# package{"$textwrangler": 
	# 	source => "$pkg_base/$textwrangler",
	# 	provider => appdmg,
	# 	}
	# package{"$firefox": 
	# 	source => "$pkg_base/$firefox",
	# 	provider => appdmg,
	# 	}

	package{"$firstclass": source => "http://127.0.0.1/packages/$firstclass",}rm 

} # End of Class
