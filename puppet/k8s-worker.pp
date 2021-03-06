
$binfolder = '/usr/bin'

file { "${binfolder}/kubelet":
  ensure => 'file',
  source => '/vagrant/bin/kubelet',
  mode   => '0111',
}

file { "${binfolder}/kube-proxy":
  ensure => 'file',
  source => '/vagrant/bin/kube-proxy',
  mode   => '0111',
}

file { '/etc/kubernetes':
    ensure => 'directory',
} ->
file { '/etc/kubernetes/cfg':
    ensure => 'directory',
} ->
file { "/usr/lib/systemd/system/kubelet.service":
  ensure => 'file',
  source => '/vagrant/systemd/kubelet.service',
} ->
exec { 'kubelet-systemd-reload':
  command     => 'systemctl daemon-reload',
  path        => [ '/usr/bin', '/bin', '/usr/sbin' ],
  refreshonly => true,
} ->
service { 'kubelet':
#  ensure   => running,
  enable   => true,
}

file { "/usr/lib/systemd/system/kube-proxy.service":
  ensure => 'file',
  source => '/vagrant/systemd/kube-proxy.service',
} ->
exec { 'kube-proxy-systemd-reload':
  command     => 'systemctl daemon-reload',
  path        => [ '/usr/bin', '/bin', '/usr/sbin' ],
  refreshonly => true,
} ->
service { 'kube-proxy':
#  ensure   => running,
  enable   => true,
}

file { "/etc/kubernetes/cfg/kubeconfig":
  ensure => 'file',
  source => '/vagrant/configs/kubeconfig',
}
