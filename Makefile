### Install in verious linux distros.
install_centos:
	bash bin/distros/centos/atom_centos_install.sh

install_fedora:
	bash bin/distros/fedora/atom_fedora_install.sh

install_ubuntu-debian:
	bash bin/distros/ubuntu-debian/atom_ubuntu-debian_install.sh


### Import this Atom packages by cli
import:
	apm install --packages-file config/packages.list


### Export this Atom packages by cli
export:
	mkdir -p config
	apm list --installed --bare > config/packages.list


### Remove ALL packages
remove:
	apm remove $(apm list --installed --bare | cut -d'@' -f1)


### Update Atom dependencies
upgrade:
	apm upgrade
