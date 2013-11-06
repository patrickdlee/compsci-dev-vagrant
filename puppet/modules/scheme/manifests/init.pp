# == Class: scheme
#
# Installs Sig-Scheme packages.
#
class scheme {
  package { 'sigscheme': ensure => 'latest' }
}
