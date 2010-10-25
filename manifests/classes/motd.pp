# Adding to classes/motd.pp

class motd {
  file { "/etc/motd":
    content => "Wouldn't you rather be playing Guitar Hero?\n",
  }
}
