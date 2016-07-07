# Atom config

### Export
apm list --installed --bare > packages.list

### Import
apm install --packages-file packages.list

### Remove ALL packages
apm remove $(apm list --installed --bare | cut -d'@' -f1)

