# Class: demofile
#
#
class demoauthorization {
	macauthorization{'system.preferences.dateandtime.changetimezone':
		auth_type		=>	'right',
		ensure			=>	'present',
		comment			=>	'CREATED BY PUPPET - Setting Date and Time',
		auth_class		=>	'allow',
		shared			=>	'true',
	}
	
}# End of Class