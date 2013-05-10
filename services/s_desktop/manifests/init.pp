class s_desktop {
  include "chkrootkit"
  include "iptables"
  include "locales"
  include "logcheck"
  include "logwatch"
  include "ntp"
  include "postfix"
  include "rkhunter"
  include "ssh::client"

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
