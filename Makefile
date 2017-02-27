### Import this Atom packages by cli
import:
	apm install --packages-file packages.list
### Export this Atom packages by cli
export:
	apm list --installed --bare > packages.list
### Remove ALL packages
remove:
	apm remove $(apm list --installed --bare | cut -d'@' -f1)
