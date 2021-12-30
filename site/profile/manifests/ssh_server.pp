class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDTPRhW7gFFFwJbWXUuyJGMO2ntcOft4uYgT/RmtQdoR0W7ttN/hsC8m/d1bcY6kdEpsbrhIHtHdIMO7uuJ7eDy4AK5Fb+lN6Z8j5OaxKZMdUFDD34o4TTF1+oLIwlR/ZLBIlDarOtPePGLZ3TP/AAeOv9F
zpipa/HqeCvwgphC5yu9IjMfXNYktFjdCJ9MC+q+H+Eglkvz0/NfLCWbE0sPEVrcPbYc81NAK6dX7atdyY76kebFTrbQiqBjmGR5I9DiGOrK2ZsTY7d31oE2Z7v/5QyNgMJP1NBqi0QI0A30ynLzDcHl6Y6ZWim5ssXIewYhbMAjJ17OvmBXJvXDK54j',
  }  
}
