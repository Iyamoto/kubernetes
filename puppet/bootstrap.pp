notify { 'greeting':
  message => 'Starting Puppet'
}

package { 'git':
  ensure  => installed,
}

package { 'fakeroot':
  ensure  => installed,
}
