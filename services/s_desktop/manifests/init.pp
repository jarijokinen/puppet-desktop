class s_desktop {
  include "chkrootkit"
  include "iptables"
  include "logcheck"
  include "logwatch"
  include "ntp"
  include "rkhunter"

  package { "bsd-mailx": 
    ensure => installed
  }

  file { "/etc/rc.local":
    ensure  => present,
    content => template("s_desktop/rc.local.erb"),
    mode    => "0700"
  }

  iptables::module { "resolvers": }
}
