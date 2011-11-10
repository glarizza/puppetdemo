macauthorization { 'system.device.dvd.setregion.initial':
  ensure     => 'present',
  auth_class => 'user',
  auth_type  => 'right',
  comment    => 'Used by the DVD player to set the region code the first time.  Note that changing the region code after it has been set requires a different right (system.device.dvd.setregion.change).',
  group      => 'staff',
  shared     => 'true',
}
