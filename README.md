# Atom - A hackable text editor

### Download Atom's last release and install/update
https://github.com/atom/atom/releases/latest

### Import this Atom packages by cli
- ``git clone https://github.com/waynelai614/config-atom``
- ``cd config-atom``
- ``apm install --packages-file packages.list``

### Export this Atom packages by cli
``apm list --installed --bare > packages.list``

### Remove ALL packages
``apm remove $(apm list --installed --bare | cut -d'@' -f1)``
