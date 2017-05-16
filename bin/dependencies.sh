#!/bin/bash

sudo ls -al

# Set right permissions.
sudo setfacl -m u:$USER:rwx /usr/local/bin


# Install composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer
sudo chmod -R +x /usr/local/bin
composer global config bin-dir /usr/local/bin/


# Global dependencies.
composer global require --prefer-dist --no-interaction friendsofphp/php-cs-fixer
composer global require --prefer-dist --no-interaction phpmd/phpmd
composer global require --prefer-dist --no-interaction squizlabs/php_codesniffer

# Install sass gem
sudo gem install sass
sudo gem install scss_lint



# Uncomment to use Drupal dependencies.
# composer global require --prefer-dist --no-interaction drupal/coder
# composer global require --prefer-dist --no-interaction drush/drush:~8.0
#
#
# # Drupal PHPPCS Standards
# ln -nsf ~/.composer/vendor/drupal/coder/coder_sniffer/Drupal ~/.composer/vendor/squizlabs/php_codesniffer/CodeSniffer/Standards/Drupal
# ln -nsf ~/.composer/vendor/drupal/coder/coder_sniffer/DrupalPractice ~/.composer/vendor/squizlabs/php_codesniffer/CodeSniffer/Standards/DrupalPractice
