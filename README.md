# Atom config

### Export
apm list --installed --bare > packages.list

### Import
apm install --packages-file packages.list

### Special snowflakes
_Consider run the following commands as ``` sudo ``` if you get permissions issues_

**linter-rubocop** requires rubocop. Run ``` gem install rubocop ``` command to install.

**rubocop** requires ruby-dev. Run, on distros Debian, ``` sudo apt-get install ruby ruby-dev ``` command to install.

**linter-pylint** requires pylint. Run ``` pip install pylint ``` command to install.

**linter-pep8** requires pep8. Run ``` pip install pep8 ``` command to install.

**import/export instructions** from _https://discuss.atom.io/t/how-to-backup-all-your-settings/15674_
