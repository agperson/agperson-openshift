class profile::all-in-one {
  class { 'openshift_origin' :
    # Components to install on this host:
    roles      => ['broker','named','activemq','datastore','node'],

    # The FQDNs of the OpenShift component hosts; for a single-host
    # system, make all values identical.
    broker_hostname            => $::ec2_hostname,
    node_hostname              => $::ec2_hostname,
    named_hostname             => $::ec2_hostname,
    datastore_hostname         => $::ec2_hostname,
    activemq_hostname          => $::ec2_hostname,

    # BIND / named config
    # This is the key for updating the OpenShift BIND server
    bind_key                   => 'CNk+wjszKi9da9nL/1gkMY7H+GuUng==',
    # The domain under which applications should be created.
    domain                     => $::ec2_hostname,
    # Apps would be named <app>-<namespace>.example.com
    # This also creates hostnames for local components under our domain
    register_host_with_named   => true,
    # Forward requests for other domains (to Google by default)
    conf_named_upstream_dns    => ['8.8.8.8'],

    # Auth OpenShift users created with htpasswd tool in /etc/openshift/htpasswd
    broker_auth_plugin         => 'htpasswd',
    # Username and password for initial openshift user
    openshift_user1            => 'openshift',
    openshift_password1        => 'password',

    # To enable installing the Jenkins cartridge:
    install_method             => 'yum',
    jenkins_repo_base          => 'http://pkg.jenkins-ci.org/redhat',

    # Enable development mode for more verbose logs
    development_mode           => true,
    install_login_shell        => false,

    # Set if using an external-facing ethernet device other than eth0
    conf_node_external_eth_dev => 'eth0',

    # If using with GDM, or have users with UID 500 or greater, put in this list
    #node_unmanaged_users => ['user1'],
    install_cartridges    => [ 'cron', 'diy', 'haproxy', 'php', 'python', 'mariadb' ],

    # Not being set bug
    node_shmmax           => 68719476736,
    node_shmall           => 4294967296,
  }
}
