rm ~/.vimrc
rm ~/.bashrc
rm ~/.profile
rm ~/.Xresources
rm -r ~/.vim
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.fehbg ~/.fehbg
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.profile ~/.profile
ln -s ~/dotfiles/.Xresources ~/.Xresources
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.fehbg/ ~/.fehbg

git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update
