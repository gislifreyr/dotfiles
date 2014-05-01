#!/bin/bash


##################################

DATE=$(date +%d%m%y-%H:%M)

# tjekka hvort git og stow se installed. annars quitta
echo "============================================="
echo "= Checking if git and stow are installed... ="
echo "============================================="
which git || ( echo "Install git, you git" && exit 1 )
stow_path=$(which stow) || ( echo "Install stow ya filthy animal!" && exit 1 )

# clonea repoid function
$inst_path=$HOME/devel
clone_repo() {
	mkdir -p $inst_path/devel && cd $inst_path/devel
	echo "================================"
	echo "= Cloning the dotfiles repo... ="
	echo "================================"
	git clone https://github.com/gislifrey/ready-steady-go
}
# clonea vundle repoid function
vim_bundling() {
	cd $inst_path/dotfiles/vim
	echo "============================================"
	echo "= Cloning Vundle and installing plugins... ="
	echo "============================================"
	git clone https://github.com/gmarik/Vundle.vim.git .vim/bundle/Vundle.vim
	vim +PluginInstall +qall
}
# backup old files if any
# stow function
stow_link() {
	cd $inst_path/dotfiles
	echo "==========================="
	echo "= Symlinking with stow... ="
	echo "==========================="
	$stow_path apps
	$stow_path bash
	$stow_path extras
	$stow_path git
	$stow_path vim
}


echo "###################################################################"
echo "## Are you sure you wanna do this? It could break your system... ##"
echo "###################################################################"

read -sn 1 -p "Press y/Y to break your system..."

if [[ $REPLY = [yY] ]];

then


	echo "###############################################################"
	echo "## Everything went better than expected. Happy hacking!      ##"
	echo "###############################################################"

else

	echo -e "\n###############################################################"
	echo "## Son, I am disappoint!                                     ##"
	echo "## Y U NO TRUST ME?                                          ##"
	echo "## Back in my day men were men and wrote their own scripts!  ##"
	echo "###############################################################"

fi
