# See http://support.apple.com/kb/TA23576

macauthorization { 'system.preferences.dateandtime.changetimezone':
  ensure     => 'present',
  auth_class => 'allow',
  auth_type  => 'right',
  comment    => 'This right is used by DateAndTime preference to allow any user to change the system timezone.',
  shared     => 'true',
}
