DOTFILES_SRC=${DOTFILES_SRC:-~/.dotfiles}

# ensure node is installed
which node || brew install node@8

# eslint
which eslint || npm i eslint \
  standard \
  semistandard \
  eslint-plugin-node \
  eslint-plugin-import \
  eslint-plugin-standard \
  eslint-config-standard \
  eslint-config-semistandard \
  eslint-plugin-promise \
  eslint-plugin-react -g

# snippets
ln -sfv ${DOTFILES_SRC}/.vim/snippets ~/.vim

# file types
ln -sfv $DOTFILES_SRC/.vim/ftplugin ~/.vim

# manage my own js snippets
# list of original ones: https://github.com/honza/vim-snippets
rm -rf ~/.vim/bundle/vim-snippets/snippets/javascript/
