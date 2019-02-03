class motd($message = 'Hello World!') {
  file { '/etc/motd':
    content => $message,
  }
}
