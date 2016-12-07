#!/bin/bash
	cd ../
	if  ! [ -d sc-web/ ]; then
 	echo 'sc-web directory does not exists, i will clone it.'
 	git clone https://github.com/Ivan-Zhukau/sc-web.git
	fi
	cd sc-web/
	sudo apt-get update
    sudo apt-get install nodejs
	sudo apt-get install npm
	sudo npm cache clean -f
	sudo npm install -g n
	sudo n stable
	echo "Installing grunt"
	sudo npm install -g grunt-cli
	echo "Installing sc-web"
	git update-index --assume-unchanged Gruntfile.js
	echo "npm-install"
	npm install
	grunt build
	echo "Sucess"