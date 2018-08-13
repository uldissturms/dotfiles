#!/bin/bash

# init vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -sv ~/.dotfiles/.vimrc ~
vim +PluginInstall +qall

# init zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -o ~/.oh-my-zsh/themes/TheOne.zsh-theme https://raw.githubusercontent.com/benniemosher/the-one-theme/master/zsh/TheOne.zsh-theme
ln -sf ~/.dotfiles/.zshrc ~
ln -sf ~/.dotfiles/oh-my-zsh/custom ~/.oh-my-zsh/custom

ln -sf ~/.dotfiles/.ackrc ~

# atom
ln -sf ~/.dotfiles/.atom/config.cson ~/.atom/config.cson
ln -sf ~/.dotfiles/.atom/keymap.cson ~/.atom/keymap.cson

# eslint
ln -sf ~/.dotfiles/.eslintrc.yml ~

# scripts
ln -sf ~/.dotfiles/scripts ~

# init tmux
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -sv ~/.dotfiles/.tmux.conf ~

# utils
brew install grv
brew install ctags
brew install ncurses

# git
ln -sv ~/.dotfiles/.gitconfig ~

# ctags
ln -sv ~/.dotfiles/.ctags ~

# neovim
mkdir -p ~/.config/nvim
ln -sv ~/.dotfiles/config/nvim/init.vim ~/.config/nvim/

# terminal true colours
mkdir -p ~/.terminfo/{74,78}
cp /usr/local/opt/ncurses/share/terminfo/74/tmux-256color ~/.terminfo/74
cp /usr/local/opt/ncurses/share/terminfo/78/xterm-256color ~/.terminfo/78
