notify { 'greeting':
  message => 'Starting Puppet'
}

package { 'git':
  ensure  => installed,
}

package { 'fakeroot':
  ensure  => installed,
}

package { 'bash-completion':
  ensure  => installed,
}

package { 'jq':
  ensure  => installed,
}