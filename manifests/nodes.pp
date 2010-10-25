# /etc/puppet/manifests/nodes.pp

node 'demomini.huronhs.com' {
	include demouser
	include passenger
}
node default {
	include general_image
}
