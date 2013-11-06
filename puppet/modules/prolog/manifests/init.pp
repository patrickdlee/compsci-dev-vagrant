# == Class: prolog
#
# Installs Gnu Prolog.
#
class prolog {
  package { 'gprolog': ensure => 'latest' }
}
