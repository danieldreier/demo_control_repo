Exec {
  logoutput => 'on_failure',
  path      => '/usr/bin:/usr/sbin:/bin:/sbin',
}
case $::osfamily {
  'Debian': {
    Package { subscribe => Exec['apt_update'] }
  }
}

$default_packages = ['vim', 'mosh', 'tmux']

node default {
  package {$default_packages:
    ensure => present
  }
  notify {'puppet ran!': }
}
