cask 'vagrant-1.9.0' do
  version '1.9.0'
  sha256 '896eb09fdd4b35ecb4d7cb02394b0a7b57cda1cb218a4b0d6e0d9340265f8590'

  # hashicorp.com/vagrant was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vagrant/#{version}/vagrant_#{version}.dmg"
  appcast 'https://github.com/mitchellh/vagrant/releases.atom',
          checkpoint: '8d16ac5df154d7b39604d9f6505b17394cdc45205c6a75a1bac8d9ff39cc2f06'
  name 'Vagrant'
  homepage 'https://www.vagrantup.com/'

  pkg 'Vagrant.pkg'

  uninstall script:  { executable: 'uninstall.tool', input: %w[Yes] },
            pkgutil: 'com.vagrant.vagrant'

  zap delete: '~/.vagrant.d'
end
