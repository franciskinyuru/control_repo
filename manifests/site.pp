node default {
file{'/root/README':
ensure => file,
content => 'Hello they this is puppet speaking',
owner => 'root',
}
}
node 'master.puppet.vm' {
 include site::role::master_1
}
node /^web/ {
include role::app_server
}
node /^db/ {
include role::db_server
}
