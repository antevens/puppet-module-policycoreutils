# == Class: jalli-policycoreutils
#
# Setup selinux policycoreutils on redhat based systems (Centos, Fedora, RHEL, etc)
#
# === Authors
#
# Author Name <jarl.stefansson@gmail.com>
#
# === Copyright
#
# Copyright 2013 Jarl Stefansson, unless otherwise noted.
#
class jalli-policycoreutils {
  case $osfamiliy {
    redhat: {
      package { 'polictycoreutils':
        ensure => installed,
      }
      package { 'policycoreutils-python':
        ensure => installed,
      }
    }
  }
}
