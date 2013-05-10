class s_desktop {
  include "build"
  include "chkrootkit"
  include "grsecurity"
  include "iptables"
  include "kernel::package"
  include "locales"
  include "logcheck"
  include "logwatch"
  include "mutt"
  include "ntp"
  include "postfix"
  include "rkhunter"
  include "ssh::client"
  include "tcpd"
  include "timezone"
  include "vim"
  
  # X11
  include "evince"
  include "geeqie"
  include "gimp"
  include "libreoffice::calc"
  include "libreoffice::writer"

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

  iptables::module { "resolvers": }
}
