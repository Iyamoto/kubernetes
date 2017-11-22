
package { 'docker':
  ensure  => installed,
} ->
file { "/etc/systemd/system/docker.service.d/override.conf":
  ensure => 'file',
  source => '/vagrant/systemd/docker-override.conf',
} ->
service { 'docker':
  enable => true,
  ensure => 'running',
}

group { 'docker':
  ensure => 'present',
} ->
user { 'vagrant':
  groups => ['docker'],
  membership => minimum,
}
