# == Class: mono
#
# Installs Mono packages.
#
class mono {
  case $::operatingsystem {
    'Ubuntu': {
      package { 'mono-complete': ensure => 'latest' }
      package { 'mono-devel': ensure => 'latest' }
      package { 'gtk-sharp2': ensure => 'latest' }
    }
    'Fedora': {
      package { 'mono-core': ensure => 'latest' }
      package { 'gtk-sharp2-devel': ensure => 'latest' }
    }
    default: {
      fail("Unsupported OS: ${::operatingsystem}")
    }
  }
}
