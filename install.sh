#!/bin/bash

#if [[ -d ~/.ssh && -f ~/.ssh/config ]]; rm ~/.ssh/config fi
#ln -s ~/dotfiles/.ssh/config ~/.ssh/config

declare -A FILES=(
	[.vimrc]=~/.vimrc
	[.bashrc]=~/.bashrc
	[.zshrc]=~/.zshrc
	[.aliases]=~/.aliases
	[.profile]=~/.profile
	[.Xresources]=~/.Xresources
	[.ssh/config]=~/.ssh/config
	[.vim]=~/.vim
	[i3/]=~/.config/i3
	[.zsh/]=~/.zsh
)

for key in "${!FILES[@]}"; do
	if [[ -h ${FILES[$key]} && $(readlink ${FILES[$key]}) == "$(pwd)/$key" ]]; then
		echo "${FILES[$key]} already linked, skipping"
		continue
	fi
	if [[ -f ${FILES[$key]} || -d ${FILES[$key]} ]]; then
		echo "${FILES[$key]} already exists."
		while true
		do
			read -p "Replace? (Y/N): " answer
			case $answer in
				[yY]* )
					rm -r "${FILES[$key]}"
					ln -s "$(pwd)/$key" "${FILES[$key]}"
					break;;
				[nN]* )
					echo "Ok, skipping ${FILES[$key]}"
					break;;
			esac
		done
		continue
	fi
	echo "Linking ${FILES[$key]}"
	ln -s "$(pwd)/$key" "${FILES[$key]}"
    echo $(pwd)/$key
    echo ${FILES[$key]}
done
