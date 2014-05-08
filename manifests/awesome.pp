# Class: puppet-archlinux-macbookretina::awesome
#
# Install awesome window management
#
# Parameters:
#
# Actions:
#   - Install awesome
#
# Requires:
#
# Sample Usage:
#
class puppet-archlinux-macbookretina::awesome {

  package {'awesome':
    ensure => present,
  }

  file { '/home/amlweems/.config/awesome/rc.lua':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/puppet-archlinux-macbookretina/rc.lua',
    require => Package['xorg-server'],
  }

}
