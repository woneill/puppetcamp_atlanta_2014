package { 'openssh-server':
  ensure => installed,
}

file { '/etc/ssh/sshd_config':
  source => 'puppet:///modules/sshd/sshd_config',
  owner  => 'root',
  group  => 'root',
  mode   => '640',
  notify => Service['sshd'], /* sshd will restart whenever you
             edit this file. */
  require => Package['openssh-server'],
}

service { 'sshd':
  ensure     => running,
  enable     => 'true',
  hasstatus  => 'true',
  hasrestart => 'true',
}
