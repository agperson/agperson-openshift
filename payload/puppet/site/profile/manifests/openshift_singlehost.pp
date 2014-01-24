class profile::openshift_singlehost {
  class { 'openshift_origin' :
    domain                     => 'example.com',
    node_unmanaged_users       => ['root'],
    development_mode           => true,
    conf_node_external_eth_dev => 'eth0',
    install_login_shell        => true,
    install_method             => 'yum',
    register_host_with_named   => true,
    broker_auth_plugin         => 'htaccess',
    broker_dns_plugin          => 'avahi',
  }
}
