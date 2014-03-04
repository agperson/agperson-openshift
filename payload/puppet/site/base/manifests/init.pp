class base {
  # Nice to have
  package { ['tmux', 'elinks', 'htop']: }

  # OpenShift Origin Dependencies
  package { 'NetworkManager': }
  package { 'augeas': }

  # OpenShift want to install vim-enhanced which conflicts with vim-minimal, a
  # sudo dependency. Remove it while leaving sudo so that vim-enhanced can be
  # cleanly installed without error.
  exec { '/bin/rpm -e --nodeps vim-minimal':
    onlyif => '/bin/rpm -q vim-minimal'
  }
}
