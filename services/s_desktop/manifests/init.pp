class s_desktop {
  include "chkrootkit"
  include "grsecurity"
  include "iptables"
  include "libreoffice::calc"
  include "libreoffice::writer"
  include "locales"
  include "logcheck"
  include "logwatch"
  include "ntp"
  include "postfix"
  include "rkhunter"
  include "ssh::client"
  include "tcpd"
  include "timezone"

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
