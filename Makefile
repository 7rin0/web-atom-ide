### Install Ubuntu / Debian dist
install:
	bash bin/atom_debian_ubuntu_install.sh
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
