if [[ -f ~/.vimrc ]]; rm ~/.vimrc fi
ln -s ~/dotfiles/.vimrc ~/.vimrc

if [[ -d ~/.fehbg ]]; rm -r ~/.fehbg fi
ln -s ~/dotfiles/.fehbg ~/.fehbg

if [[ -f ~/.bashrc ]]; rm ~/.bashrc fi
ln -s ~/dotfiles/.bashrc ~/.bashrc

if [[ -f ~/.profile ]]; rm ~/.profile fi
ln -s ~/dotfiles/.profile ~/.profile

if [[ -f ~/.Xresources ]]; rm ~/.Xresources fi
ln -s ~/dotfiles/.Xresources ~/.Xresources

if [[ -d ~/.vim ]]; rm -r ~/.vim fi
ln -s ~/dotfiles/.vim ~/.vim

if [[ -d ~/.ssh && -f ~/.ssh/config ]]; rm ~/.ssh/config fi
ln -s ~/dotfiles/.ssh/config ~/.ssh/config

if [[ -d ~/.ncmpcpp ]]; rm -r ~/.ncmpcpp fi
ln -s ~/dotfiles/.ncmpcpp ~/.ncmpcpp

if [[ -f ~/.zshrc ]]; rm ~/.zshrc fi
ln -s ~/dotfiles/.zshrc ~/.zshrc

if [[ -d ~/.config/i3 ]]; rm -r ~/.config/i3 fi
ln -s ~/dotfiles/i3 ~/.config/i3
