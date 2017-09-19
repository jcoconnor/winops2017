class profile::wannacry_vulnerable {
  # Let's not really expose computers to wannacry!
  # Instead use a dummy file
  if $::osfamily == 'windows' {
    File { 'C:\Users\puppet\wannacry.txt':
      ensure  => present,
      content => 'Send me your bitcoins or else!',
    }
  }
}
