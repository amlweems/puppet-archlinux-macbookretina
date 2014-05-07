# Class: puppet-archlinux-macbookretina::amlweems_packages
#
# Packages largely specific to amlweems's workstation setup
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class puppet-archlinux-macbookretina::amlweems_packages {

  # internet service clients
  package {'irssi': ensure => present, }
  package {'perl-net-dbus': ensure => present, } # for irssi libnotify plugin, from AUR package irssi-libnotify-git or local perl script
  package {'whois': ensure => present, }

  # misc dev/editing
  package {'vim': ensure => present, }
  package {'wipe': ensure => present, }

  # browser
  package {'firefox': ensure => present, }

  # keepass
  package {'keepassx': ensure => present, }

  # FUSE/sshfs
  package {'fuse': ensure => present, }
  package {'sshfs': ensure => present, }

  # java
  package {'jre7-openjdk': ensure => present, }
  package {'jdk7-openjdk': ensure => present, }

  # desktop
  package {'slim': ensure => present, }
  package {'awesome': ensure => present, }

  # terminal
  package {'gnome-terminal': ensure => present, }

  # misc
  package {'gnu-netcat': ensure => present, }
  package {'nmap': ensure => present, }
  package {'pdftk': ensure => present, }
  package {'strace': ensure => present, }
  package {'tcpdump': ensure => present, }
  package {'traceroute': ensure => present, }
  package {'vlc': ensure => present, }
  package {'wireshark-cli': ensure => present, }
  package {'wireshark-gtk': ensure => present, }
  package {'xscreensaver': ensure => present, }
  package {'syslinux': ensure => present, }
  package { 'imagemagick': ensure => present, }
  package {'tree': ensure => present, }
  package{ 'gdb': ensure => present, }
  package {'python': ensure => present, }

}
