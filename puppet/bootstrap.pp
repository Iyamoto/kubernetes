notify { 'greeting':
  message => 'Starting Puppet'
}

package { 'fakeroot':
  ensure  => installed,
}

package { 'bash-completion':
  ensure  => installed,
}
