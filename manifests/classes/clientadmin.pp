# /etc/puppet/manifest/classes/clientadmin.pp

class clientadmin {

  include loginwindow, directoryservice

  $services_to_restart = $macosx_consoleuid ? {
    "0" => [
      Service["com.apple.DirectoryServices"],
      Service["com.apple.loginwindow"]
	],
    default => [ Service["com.apple.DirectoryServices"] ]
  }

  file {
    # The actual dslocal user account.
    # User management is really nice in Leopard.
    "/var/db/dslocal/nodes/Default/users/clientadmin.plist":
      source => "puppet:///files/clientadmin.plist",
      mode   => 400,
      notify => $services_to_restart;
    # The text file containing the account password hash.
    "clientadmin_password_hash":
      path   => "/var/db/shadow/hash/ECA08D4A-BD76-459F-B2FB-C6AA24D75B7E",
      source => "puppet:///files/clientadmin_password_hash",
      mode   => 400;
  }
  
}
