class base {
  # Nice to have
  package { ['tmux', 'elinks', 'htop']: }

  # OpenShift Origin Dependencies
  package { 'NetworkManager': }
  package { 'augeas': }
}
