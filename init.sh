#!/bin/bash

# init vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -sv ~/.dotfiles/.vimrc ~
vim +PluginInstall +qall

# init zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -o ~/.oh-my-zsh/themes/gitster.zsh-theme https://raw.githubusercontent.com/shashankmehta/dotfiles/master/thesetup/zsh/.oh-my-zsh/custom/themes/gitster.zsh-theme
ln -sv ~/.dotfiles/.zshrc ~
cp ~/.dotfiles/oh-my-zsh/custom/* ~/.oh-my-zsh/custom/

ln -sv ~/.dotfiles/.tmux.conf ~
ln -sv ~/.dotfiles/.ackrc ~

# atom
ln -sf ~/.dotfiles/.atom/config.cson ~/.atom/config.cson
ln -sf ~/.dotfiles/.atom/keymap.cson ~/.atom/keymap.cson
