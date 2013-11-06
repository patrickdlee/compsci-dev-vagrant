# == Class: baseconfig
#
# Performs needed configuration tasks for all VM's: updates package
# lists, etc.
#
class baseconfig {
  case $::operatingsystem {
    'Ubuntu': {
      exec { 'apt-get update':
        command => '/usr/bin/apt-get update';
      }
    }
    'Fedora': {
      exec { 'yum update':
        command => '/usr/bin/yum update -y';
      }
    }
    default: {
      fail("Unsupported OS: ${::operatingsystem}")
    }
  }

  package { 'htop': ensure => 'latest' }
  package { 'tree': ensure => 'latest' }
}
