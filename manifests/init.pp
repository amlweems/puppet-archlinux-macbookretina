# Class: puppet-archlinux-macbookretina
#
# Manage includes of other puppet-archlinux-macbookretina classes
# top-level class for puppet-archlinux-macbookretina ecosystem
#
# WARNING - WARNING - this file is generated by makeinitpp.sh. 
#   any local changes will be overwritten.
#
# Parameters:
#
# Actions:
#   - Include other classes
#
# Requires:
#
# Sample Usage:
#
class puppet-archlinux-macbookretina {
  # Install base packages we want on any (arch) system and setup makepkg.conf
  include puppet-archlinux-macbookretina::arch_base

  # Install augeas, required for some of the puppet classes
  include puppet-archlinux-macbookretina::augeas

  # Install and configure chrony, a roaming/laptop friendly NTP client
  include puppet-archlinux-macbookretina::chrony

  # Install CUPS printing
  include puppet-archlinux-macbookretina::cups

  # Install, run and configure DKMS
  include puppet-archlinux-macbookretina::dkms

# BLACKLISTED in makeinitpp.sh: firewall_post
#  # Define firewall rules that will always be at the end of the chain
#  include puppet-archlinux-macbookretina::firewall_post

# BLACKLISTED in makeinitpp.sh: firewall_pre
#  # Define firewall rules that will always be at the beginning of the chain
#  include puppet-archlinux-macbookretina::firewall_pre

  # Install proprietary google-chrome package and ttf-google-fonts-git from archlinuxfr repository.
  include puppet-archlinux-macbookretina::googlechrome

  # Install iptables and setup framework for puppetlabs/firewall module and set custom rules
  include puppet-archlinux-macbookretina::iptables

  # Packages largely specific to jantman's workstation setup
  include puppet-archlinux-macbookretina::jantman_packages

  # Install KDM and KDE basics and run kdm
  include puppet-archlinux-macbookretina::kde

# BLACKLISTED in makeinitpp.sh: laptop_mode_tools
#  # Install and configute laptop-mode-tools for power saving
#  include puppet-archlinux-macbookretina::laptop_mode_tools

  # Install LibreOffice suite
  include puppet-archlinux-macbookretina::libreoffice

  # Install the mlocate package and run updatedb
  include puppet-archlinux-macbookretina::locate

  # Sets up macbook-specific keyboard stuff
  include puppet-archlinux-macbookretina::mac_keyboard

  # Setup KDM/KDE specific to the MacBook Pro Retina - setup kdmrc
  include puppet-archlinux-macbookretina::mbp_retina_kde

  # Install mosh (mobile shell) and set firewall rules for it
  include puppet-archlinux-macbookretina::mosh

  # Install Mozilla ProfileManager for Firefox as an ugly binary untar
  include puppet-archlinux-macbookretina::mozilla_profilemanager

  # Install and setup networkmanager its KDE components, and ensure dhcpcd is stopped and nm is running
  include puppet-archlinux-macbookretina::networkmanager

# BLACKLISTED in makeinitpp.sh: nouveau
#  # Install nouveau driver for nvidia graphics and sample xorg.conf. Choose this class OR nvidia.
#  include puppet-archlinux-macbookretina::nouveau

  # Install proprietary nvidia driver for nvidia graphics and sample xorg.conf. Choose this class OR nouveau.
  include puppet-archlinux-macbookretina::nvidia

  # Install OpenVPN and its NetworkManager part
  include puppet-archlinux-macbookretina::openvpn

# BLACKLISTED in makeinitpp.sh: pdnsd
#  # Install and configute pdnsd for persistent local dns caching.
#  include puppet-archlinux-macbookretina::pdnsd

  # Install and configure profile-sync-daemon - REQUIRES CONFIGURATION
  include puppet-archlinux-macbookretina::profilesyncdaemon

  # Make /etc/mkinitcpio.d/linux.preset changes for booting via rEFInd
  include puppet-archlinux-macbookretina::refind

  # Install prerequisites for ruby rvm
  include puppet-archlinux-macbookretina::rvm

  # Sets up SSD-specific tuning on the system, disks and ext4 partitions
  include puppet-archlinux-macbookretina::ssd

  # Install and setup OpenSSH, drop in sshd_config
  include puppet-archlinux-macbookretina::sshd

  # Install sudoers file - Arch default plus allow wheel access to all (with password).
  include puppet-archlinux-macbookretina::sudoers

  # Creates a swap file, makes swap, swapon, update fstab
  include puppet-archlinux-macbookretina::swapfile

  # Install and configure VirtualBox and Vagrant
  include puppet-archlinux-macbookretina::virtualbox

  # Install driver for Broadcom BCM4331 wireless, iw and wpa_supplicant
  include puppet-archlinux-macbookretina::wireless

  # Install packages required for xorg X server
  include puppet-archlinux-macbookretina::xorg

  # Add the archlinuxfr repo to pacman, install yaourt <https://wiki.archlinux.org/index.php/Yaourt> so we can get packages from AUR
  include puppet-archlinux-macbookretina::yaourt

}
