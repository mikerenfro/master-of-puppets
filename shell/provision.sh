#!/bin/bash
YUM="yum -q -y"

# Ensure working local DNS
nmcli con modify 'eth0' ipv4.dns-search 'theits23.renf.ro' \
  ipv4.ignore-auto-dns no ipv4.dns '10.234.24.254'
systemctl restart NetworkManager

# Install puppet
${YUM} install http://yum.puppet.com/puppet7-release-el-8.noarch.rpm
${YUM} install puppet-agent
