# Puppet Desktop

Puppet Desktop is a package that contains Puppet configuration for Debian based
desktops. It uses Puppet modules from
[jarijokinen/puppet-modules](https://github.com/jarijokinen/puppet-modules).

## Requirements

* Debian GNU/Linux 6.0 (squeeze)
* Puppet 3.1

## Installation

    git clone https://github.com/jarijokinen/puppet-modules.git
    git clone https://github.com/jarijokinen/puppet-desktop.git

## Usage

    puppet apply /path/to/puppet-desktop/manifests/site.pp \
      --modulepath=/path/to/puppet-modules:/path/to/puppet-desktop/services

## Support

If you have any questions or issues with Puppet Desktop, or if you like to
report a bug, please create an [issue on
GitHub](https://github.com/jarijokinen/puppet-desktop/issues).

## License

MIT License. Copyright (c) 2013 [Jari Jokinen](http://jarijokinen.com). See
[LICENSE](https://github.com/jarijokinen/puppet-desktop/blob/master/LICENSE.txt)
for further details.
