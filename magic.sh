#!/bin/bash

DATE=$(date +%d%m%y-%H:%M)

# tjekka hvort git og stow se installed. annars quitta
echo -e "Checking if git and stow are installed... \n"
which git &> /dev/null|| ( echo "Install git you git" && exit 1 )
stow_path=$(which stow) || ( echo "Install stow ya filthy animal!" && exit 1 )

# clonea repoid function
inst_path=$HOME/devel
clone_repo() {
	echo -e "\n\n================================"
	echo "= Cloning the dotfiles repo... ="
	echo "================================"
	#echo "inst_path = $inst_path"
	mkdir -p $inst_path && cd $inst_path
	#pwd
	#echo "cloneum repoid"
	git clone https://github.com/gislifrey/ready-steady-go
}

# clonea vundle repoid function
vim_bundling() {
	echo -e "\n\n============================================"
	echo "= Cloning Vundle and installing plugins... ="
	echo "============================================"
	#echo "inst_path = $inst_path"
	cd $inst_path/dotfiles/vim
	#pwd
	#echo "cloneum Vundle"
	git clone https://github.com/gmarik/Vundle.vim.git .vim/bundle/Vundle.vim
	vim +PluginInstall +qall
}

# backup old files if any
back_it_up() {
	echo -e "\n\n==========================="
	echo "= Backing up if needed... ="
	echo "==========================="
	cd $HOME
	#echo "Lets create $HOME/backup-files"
	mkdir -p $HOME/backup-files

	for i in .irssi .screenrc .tmux.conf .aliases .bash_profile .bash_prompt .bashrc .exports .functions .gitconfig .vim .vimrc
	do
		if [[ -e $i ]]; then
			if [[ -L $i ]]; then
				#echo "deleting $i"
				rm $i
			else
				#echo "Move $i to $HOME/backup-files/$i-$DATE..."
				mv $i $HOME/backup-files/$i-$DATE
			fi
		else
			echo "Nothing to do here..."
			#echo "$i"
			rm $i &> /dev/null
		fi
	done
}

# stow function
stow_link() {
	echo -e "\n\n==========================="
	echo "= Symlinking with stow... ="
	echo "==========================="
	#echo "inst_path = $inst_path"
	cd $inst_path/dotfiles
	#pwd
	$stow_path apps
	$stow_path bash
	$stow_path extras
	$stow_path git
	$stow_path vim
}


read -sn 1 -p "Shirley you can't be serious? Press y/Y if you are..."

if [[ $REPLY = [yY] ]];

then

	clone_repo
	vim_bundling
	back_it_up
	stow_link

	echo -e "\n\n+++++++++++++++++++"
	echo "Dis_gon_be_good.gif"
	echo -e "+++++++++++++++++++\n"

else
	echo "++++++++++++++++++++++"
	echo "Such disappointment..."
	echo -e "++++++++++++++++++++++\n"

fi
