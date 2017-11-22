
$binfolder = '/usr/bin'

file { '/etc/kubernetes/cfg':
    ensure => 'directory',
}

file { '/etc/kubernetes/manifests':
    ensure => 'directory',
}

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


