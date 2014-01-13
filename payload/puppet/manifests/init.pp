node default {
  class { 'openshift_origin' :
    domain                     => 'dev.oo.huit.harvard.edu',
    roles                      => ['broker','node','activemq','datastore','named'],
    node_unmanaged_users       => ['root'],
    development_mode           => true,
    install_login_shell        => true,
    install_method             => 'yum',
    register_host_with_named   => true,
    broker_auth_plugin         => 'htpasswd',
    broker_dns_plugin          => 'nsupdate',
  }
}
