# "Installing a puppet module from a manifest script",
# https://stackoverflow.com/a/25009495
def install_dep(name, version, install_dir = nil)
    install_dir ||= '/etc/puppetlabs/code/modules'
    "mkdir -p #{install_dir} && " \
    "(puppet module list | grep #{name}) || " \
    "puppet module install -v #{version} #{name}"
end
