# Class: puppet-archlinux-macbookretina::wireless
#
# Install driver for Broadcom BCM4360 wireless, iw and wpa_supplicant
#
# Parameters:
#
# Actions:
#   - Install broadcom-wl-dkms
#   - Install iw and wpa_supplicant
#
# Requires:
#   - requires the dkms class for broadcom-wl-dkms
#
# Sample Usage:
#
class puppet-archlinux-macbookretina::wireless {

  package {'broadcom-wl-dkms':
    ensure  => present,
    require => Package['yaourt']
  }

}
