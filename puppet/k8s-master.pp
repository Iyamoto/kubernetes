
$binfolder = '/usr/bin'

file { "${binfolder}/kubectl":
  ensure => 'file',
  source => '/vagrant/bin/kubectl',
  mode   => '0111',
}
