class s_desktop {
  # Base
  include "apt"
  include "chkrootkit"
  #include "grsecurity"
  include "grub"
  #include "iptables"
  include "locales"
  include "logcheck"
  include "logwatch"
  include "ntp"
  include "postfix"
  include "puppet"
  include "pwsafe"
  include "rkhunter"
  include "ssh::client"
  include "sudo"
  include "tcpd"
  include "timezone"
  
  # Development
  include "build"
  include "kernel::development"

  # Utils
  include "mutt"
  include "screen"
  include "vim"

  # X11
  include "xfce4"
  include "xdm"
  include "xorg"

  # X11 utils
  #include "chromium"
  #include "evince"
  #include "geeqie"
  #include "gimp"
  include "iceweasel"
  #include "libreoffice::calc"
  #include "libreoffice::writer"
  #include "spotify"

  package { "avahi-daemon": 
    ensure => purged
  }
  package { "bsd-mailx": 
    ensure => installed
  }
  package { "iamerican": 
    ensure => purged
  }
  package { "ibritish": 
    ensure => purged
  }
  package { "ienglish-common": 
    ensure => purged
  }
  package { "ispell": 
    ensure => purged
  }
  package { "laptop-detect": 
    ensure => purged
  }
  package { "os-prober": 
    ensure => purged
  }
  package { "task-english": 
    ensure => purged
  }
  package { "tasksel": 
    ensure => purged
  }
  package { "tasksel-data": 
    ensure => purged
  }
  package { "wamerican": 
    ensure => purged
  }

  #file { "/etc/rc.local":
  #  ensure  => present,
  #  content => template("s_desktop/rc.local.erb"),
  #  mode    => "0700"
  #}

  #iptables::module { "ntp": }
  #iptables::module { "resolvers": }
}
