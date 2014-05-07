# Class: puppet-archlinux-macbookretina::networkmanager
#
# Install and setup networkmanager, and ensure dhcpcd is stopped and nm is running
#
# Parameters:
#
# Actions:
#   - Install networkmanager
#   - Ensure NetworkManager service is running and enabled
#   - Ensure dhcpcd service is stopped and disabled
#
# Requires:
#
# Sample Usage:
#
class puppet-archlinux-macbookretina::networkmanager {

  package {'networkmanager':
    ensure => present,
  } ->

  service {'NetworkManager':
    ensure  => running,
    enable  => true,
    require => Package['networkmanager'],
  } ->

  service {'dhcpcd':
    ensure  => stopped,
    enable  => false,
    require => Service['NetworkManager'],
  }

}
