require './ruby/puppet_deps'

Vagrant.configure("2") do |config|
  # general settings for all VMs
  config.vm.box = "bento/rockylinux-8"
  config.vm.provision "shell", path: "shell/provision.sh"
  # "Installing a puppet module from a manifest script",
  # https://stackoverflow.com/a/25009495
  config.vm.provision :shell, :inline => install_dep('devalone-dnsmasq', '1.0.0')
  config.vm.provision :shell, :inline => install_dep('puppet-nginx', '4.4.0')
  config.vm.provision "puppet", manifests_path: "puppet" # uses default.pp
  # settings specific to the dnsweb VM
  config.vm.define "dnsweb" do |dnsweb|
    dnsweb.vm.hostname = "dnsweb"
    dnsweb.vm.network "private_network", ip: "10.234.24.254",
      netmask: "255.255.255.0"
  end
end
