class s_desktop {
  # Base
  include "apt"
  include "chkrootkit"
  include "grsecurity"
  include "grub"
  include "iptables"
  include "locales"
  include "logcheck"
  include "logwatch"
  include "ntp"
  include "postfix"
  include "puppet"
  include "rkhunter"
  include "ssh::client"
  include "tcpd"
  include "timezone"
  
  # Development
  include "build"
  include "kernel::development"

  # Utils
  include "msmtp"
  include "mutt"
  include "screen"
  include "vim"

  # X11
  include "chromium"
  include "evince"
  include "geeqie"
  include "gimp"
  include "iceweasel"
  include "libreoffice::calc"
  include "libreoffice::writer"
  include "spotify"

  package { "avahi-daemon": 
    ensure => purged
  }
  package { "bsd-mailx": 
    ensure => installed
  }
  package { "tasksel": 
    ensure => purged
  }
  package { "tasksel-data": 
    ensure => purged
  }

  file { "/etc/rc.local":
    ensure  => present,
    content => template("s_desktop/rc.local.erb"),
    mode    => "0700"
  }

  iptables::module { "ntp": }
  iptables::module { "resolvers": }
}
