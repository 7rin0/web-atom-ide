# Atom Web/Apps IDE
Include Majors dependencies, configurations, linters, languages, autocompletes, etc

### Screenshot
![Atom IDE](https://raw.githubusercontent.com/7rin0/config-atom/master/media/screenshot.png)

### Install Atom from CLI
#### Execute on Centos
- ``wget -qO- https://raw.githubusercontent.com/7rin0/config-atom/master/bin/distros/centos/atom_centos_install.sh | bash``

#### Execute on Fedora
- ``wget -qO- https://raw.githubusercontent.com/7rin0/config-atom/master/bin/distros/fedora/atom_fedora_install.sh | bash``

#### Execute on Ubuntu/Debian
- ``wget -qO- https://raw.githubusercontent.com/7rin0/config-atom/master/bin/distros/ubuntu-debian/atom_ubuntu-debian_install.sh | bash``


### APM: Operations/Actions
#### Import Atom's dependencies from file
- ``apm install --packages-file packages.list``

#### Export Atom's dependencies to file
- ``apm list --installed --bare > packages.list``

#### Remove ALL packages
- ``apm remove $(apm list --installed --bare | cut -d'@' -f1)``

#### Update Atom dependencies
- ``apm upgrade``
