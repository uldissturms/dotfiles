#!/bin/bash

# init vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -sv ~/.dotfiles/.vimrc ~
vim +PluginInstall +qall

# init zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -o ~/.oh-my-zsh/themes/gitster.zsh-theme https://raw.githubusercontent.com/shashankmehta/dotfiles/master/thesetup/zsh/.oh-my-zsh/custom/themes/gitster.zsh-theme
ln -sv ~/.dotfiles/.zshrc ~
ln -sf ~/.dotfiles/oh-my-zsh/custom ~/.oh-my-zsh/custom

ln -sv ~/.dotfiles/.ackrc ~

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

# terminal true colours
mkdir -p ~/.terminfo/{74,78}
cp /usr/local/opt/ncurses/share/terminfo/74/tmux-256color ~/.terminfo/74
cp /usr/local/opt/ncurses/share/terminfo/78/xterm-256color ~/.terminfo/78
