# Ansible
This repo holds my personal ansible configs, this is what I use to provision my new computer.

Run following commands after you login to your new mac:

1. Install Homebrew https://brew.sh/
2. Install Ansible https://formulae.brew.sh/formula/ansible
3. Download this git repository
4. Run my ansible playbook

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install ansible
git clone https://github.com/rrg/ansible.git
cd ~/ansible && ./playbook.yml
```

### Things I haven't yet automated, but I need to run after ansible installs and setups up everything.
TODO
* Keyboard key repeat delays, mouse speed.
* Set caps lock key to escape
* Set iterm theme and fonts (ubuntu)
* Switch alfred and spotlight shortcut keys
* Nvim - run PlugInstall
* Enter software license: alfred, sublime etc.
* Give system accessiblity access to amethyst and alfred
