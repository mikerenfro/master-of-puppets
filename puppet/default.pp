node 'dnsweb.theits23.renf.ro' {
  class { 'dnsmasq':
    addn_hosts => [
      '/vagrant/conf/hosts.theits23.renf.ro',
    ],
  }
  class { 'nginx':
  }
  nginx::resource::server { 'dnsweb.theits23.renf.ro':
    ensure      => present,
    server_name => [
      '10.234.24.254',
    ],
  }
  nginx::resource::location { 'dnsweb-casts':
    ensure    => present,
    www_root  => '/vagrant',
    location  => '/casts',
    autoindex => 'on',
    server    => 'dnsweb.theits23.renf.ro',
  }
}
