# Class: puppet-archlinux-macbookretina::mtrack
#
# Install mtrack for trackpad management
#
# Parameters:
#
# Actions:
#   - Install xf86-input-mtrack-git
#
# Requires:
#
# Sample Usage:
#
class puppet-archlinux-macbookretina::mtrack {

  package {'xf86-input-mtrack-git':
    ensure => present,
  }

  file { '/etc/X11/xorg.conf.d/10-mtrack.conf':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/puppet-archlinux-macbookretina/10-mtrack.conf',
    require => Package['xorg-server'],
  }

}
