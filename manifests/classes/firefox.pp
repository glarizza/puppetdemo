class firefox {  
  # The Label *must* match filename.
  package { "Firefox-2.0.0.7-1.pkg.dmg":
    ensure   => installed,
    provider => pkgdmg,
    alias    => firefox,
    source   => "http://127.0.0.1/packages/Firefox-2.0.0.7-1.pkg.dmg",
  }
}
