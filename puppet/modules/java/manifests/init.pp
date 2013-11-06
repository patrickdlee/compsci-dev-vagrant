# == Class: java
#
# Installs Java development packages.
#
class java {
  case $::operatingsystem {
    'Ubuntu': {
      package { 'openjdk-7-jdk': ensure => 'latest' }
    }
    'Fedora': {
      package { 'java-1.7.0-openjdk': ensure => 'latest' }
    }
    default: {
      fail("Unsupported OS: ${::operatingsystem}")
    }
  }
}
