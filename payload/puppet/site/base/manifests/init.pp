class base {
  $pkgs = [ 'git', 'tmux', 'vim-enhanced', 'elinks', 'htop' ]
  package { $pkgs: ensure => installed }
}
