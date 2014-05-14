# Class: puppet-archlinux-macbookretina::mtrack
#
# Install xf86-input-mtrack-git for MBP Trackpad use
#
# Parameters:
#
# Actions:
#   - Install xf86-input-mtrack-git
#   - Install /etc/X11/xorg.conf.d/10-mtrack.conf
#
# Requires:
#
# Sample Usage:
#
class puppet-archlinux-macbookretina::nvidia {

  package {'xf86-input-mtrack-git':
    ensure  => present,
    require => Package['yaourt'],
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
