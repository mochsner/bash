#!/bin/bash

echo "Enter 0 for desktop, 1 for server [Default: 0]"
read is_server
test -z "${is_server}" && is_server=0

if [[ $is_server -eq 1 ]]; then

	sudo snap install dotnet-runtime-60 --classic
	sudo snap alias dotnet-runtime-60.dotnet dotnet
	
	sudo apt-get update
	
	sudo apt-get install openjdk-11-jre-headless -y
	
	sudo apt-get install nginx certbot python-certbot-nginx -y
	
else

	# .NET 6.0 SDK
	sudo snap install dotnet-sdk --classic --channel=6.0
	sudo snap alias dotnet-sdk.dotnet dotnet

	# JetBrains
	sudo snap install intellij-idea-community --classic
	sudo snap install rider --classic
	
	sudo snap install telegram-desktop
	sudo snap install onenote-desktop
	sudo snap install obsidian
	sudo snap install postman
	sudo snap install notepad-plus-plus
	sudo snap install teams
	sudo snap install gimp
	sudo snap install chromium
	sudo snap install snap-store
	sudo snap install libreoffice
	sudo snap install spotify
	
	sudo add-apt-repository ppa:gnome-terminator  
	sudo apt-get update  
	sudo apt-get install terminator
	
	sudo apt install gnome-tweaks

	curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
	echo "deb https://apt.syncthing.net/ syncthing release" | sudo tee /etc/apt/sources.list.d/syncthing.list
	sudo apt-get install syncthing
	syncthing --version
	sudo vi /etc/systemd/system/syncthing@.service
	sudo vi /etc/systemd/system/syncthing@.service
	sudo systemctl start syncthing@mo
	sudo systemctl status syncthing@mo
	
fi

sudo snap install powershell
