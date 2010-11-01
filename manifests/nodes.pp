# /etc/puppet/manifests/nodes.pp

node 'democlient.huronhs.com' {
	include demostuff
}
node default {
	include general_image
}
