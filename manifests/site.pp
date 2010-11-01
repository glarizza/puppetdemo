# /etc/puppet/manifests/site.pp

import "classes/*"
import "nodes"

Exec { path => "/usr/bin:/usr/sbin:/bin:/sbin"}
Package{ensure => installed,provider => pkgdmg}
