macauthorization { 'system.install.software':
  ensure     => 'present',
  allow_root => 'true',
  auth_class => 'user',
  auth_type  => 'right',
  comment    => 'Checked when user is installing new software.',
  group      => 'admin',
  shared     => 'false',
  timeout    => '300',
}
