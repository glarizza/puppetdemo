# /etc/puppet/manifests/classes/general_image.pp

class general_image {

	# Package Names
	$firstclass = "Firstclass20100621.dmg"
	
	package{"$firstclass": source => "http://127.0.0.1/pkgs/$firstclass",} 

} # End of Class
