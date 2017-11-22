
$binfolder = '/usr/bin'

file { "${binfolder}/kubectl":
  ensure => 'file',
  source => '/vagrant/bin/kubectl',
  mode   => '0111',
}

file { '/etc/kubernetes/manifests':
    ensure => 'directory',
} ->
file { "/etc/kubernetes/manifests/master-1.yaml":
  ensure => 'file',
  source => '/vagrant/manifests/master-1.yaml',
}

file { "/etc/kubernetes/cfg/passwd":
  ensure => 'file',
  source => '/vagrant/configs/passwd',
}
