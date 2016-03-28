#!/bin/sh

sudo npm install -g eslint
sudo npm install -g babel-eslint
sudo npm install -g eslint-plugin-react
sudo npm install -g eslint-config-airbnb

sudo pip install pep8 flake8

sudo apt-get install php5
sudo apt-get install php-codesniffer
sudo echo "<?php
$phpCodeSnifferConfig = array (                                                                    
  'default_standard' => 'PSR2',                                                                     
  'php_path' => '/usr/bin/php',                                                                     
)?>" > /etc/php-codesniffer/CodeSniffer.conf

wget http://get.sensiolabs.org/php-cs-fixer.phar -O php-cs-fixer
sudo chmod a+x php-cs-fixer
sudo mv php-cs-fixer /usr/local/bin/php-cs-fixer
