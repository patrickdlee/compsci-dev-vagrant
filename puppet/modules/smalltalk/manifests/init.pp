# == Class: smalltalk
#
# Installs Gnu SmallTalk packages.
#
class smalltalk {
  package { 'gnu-smalltalk': ensure => 'latest' }
}
