# Atom Web/Apps IDE
Include main dependencies, configurations, linters, languages, autocompletes, etc. An Atom oriented for Web Development.

### Requirements
- git
- composer
- sass (only for sass development)
- phpcs / phpmd (only for php development)

### Get dependencies
You can get the main required dependencies by executing the following command:
- [x] ``` wget -qO- https://raw.githubusercontent.com/7rin0/config-atom/master/bin/dependencies.sh | bash ```

### Screenshot
![Atom IDE](https://raw.githubusercontent.com/7rin0/config-atom/master/media/screenshot.png)

### Installation
#### Install on Centos
- [x] ``` wget -qO- https://raw.githubusercontent.com/7rin0/config-atom/master/bin/distros/centos/atom_centos_install.sh | bash ```

#### Install on Fedora
- [x] ``` wget -qO- https://raw.githubusercontent.com/7rin0/config-atom/master/bin/distros/fedora/atom_fedora_install.sh | bash ```

#### Install on Ubuntu/Debian
- [x] ``` wget -qO- https://raw.githubusercontent.com/7rin0/config-atom/master/bin/distros/ubuntu-debian/atom_ubuntu-debian_install.sh | bash ```

### Update Atom
#### Update config (attention, your config will be replaced).
- [x] ``` wget -qO- https://raw.githubusercontent.com/7rin0/config-atom/master/bin/update_atom_config.sh | bash ```

#### Update Atom packages
- [x] ``` apm upgrade `


### APM: Operations/Actions
#### Import Atom's dependencies from file
- [x] ``` apm install --packages-file packages.list ```

#### Export Atom's dependencies to file
- [x] ``` apm list --installed --bare > packages.list ```

#### Remove ALL packages
- [x] ``` apm remove $(apm list --installed --bare | cut -d'@' -f1) `````
