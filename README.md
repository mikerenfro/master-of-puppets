## TL;DR

1. Run `vagrant up` (assuming you have Vagrant installed).
2. Verify you can see the screencasts list at
[http://10.234.24.254/casts/](http://10.234.24.254/casts/).
3. Read through the PDF slides in the `presentation` folder.

## Vagrant-related materials

`Vagrantfile`

: defines VM attributes and provisioning details for `dnsweb` VM that will
host screencasts and provide DNS for other VMs used in presentation.

`conf`

: configuration files for the VM, currently just a hosts file for
`dnsmasq`.

`puppet`

: Puppet manifests for the `puppet` Vagrant provisioner.

`ruby`

: convenience functions for Vagrant, currently only for easier Puppet
module installation.

`shell`

: scripts for the `shell` Vagrant provisioner.

## Presentation-related materials

`casts`

: `asciinema` screencasts from various states of building the
Infrastructure as Code servers.

`presentation`

: PDF slides and Pandoc sources for the presentation.
