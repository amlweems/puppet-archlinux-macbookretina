# Class: puppet-archlinux-macbookretina::openvpn
#
# Install OpenVPN and its NetworkManager part
#
# Parameters:
#
# Actions:
#   - Install openvpn and networkmanager-openvpn
#
# Requires:
#
# Sample Usage:
#
class puppet-archlinux-macbookretina::openvpn {

  package {'openvpn':
    ensure => present,
  }

}
