# == Class: c_dev
#
# Installs C development packages.
#
class c_dev {
  case $::operatingsystem {
    'Ubuntu': {
      package { 'build-essential': ensure => 'latest' }
    }
    'Fedora': {
      package { 'kernel-devel': ensure => 'latest' }
    }
    default: {
      fail("Unsupported OS: ${::operatingsystem}")
    }
  }

  package { 'doxygen': ensure => 'latest' }
  package { 'valgrind': ensure => 'latest' }
}
