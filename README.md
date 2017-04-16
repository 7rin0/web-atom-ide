# Atom App/Web Development - A hackable text editor
## Include Majors dependencies, configurations, linters, languages, autocompletes, etc

### Guide to Debian / Ubuntu installation

#### Install: By getting and pipeline remote script
wget -qO- https://raw.githubusercontent.com/7rin0/config-atom/master/remote_atom_debian_ubuntu_install.sh | bash 

#### Install: Clone this project and run install
- ``git clone https://github.com/7rin0/config-atom``
- ``cd config-atom``
- ``make install``

#### Import Atom's dependencies from file
- ``apm install --packages-file packages.list``

#### Export Atom's dependencies to file
``apm list --installed --bare > packages.list``

#### Remove ALL packages
``apm remove $(apm list --installed --bare | cut -d'@' -f1)``

