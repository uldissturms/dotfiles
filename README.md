## setup

```bash
DOTFILES_DEST=~/.dotfiles
git clone git@github.com:uldissturms/dotfiles $DOTFILES_DEST
$DOTFILES_DEST/init.sh
```

run ```chsh -s /bin/zsh``` to set zsh as default shell

## structure

```
.
├── atom.sh               // install atom plugins
├── vim.sh                // install vim dependencies
├── README.md
├── init.sh
├── macos
│   └── brew.sh
├── oh-my-zsh
│   └── custom
│       └── aliases.zsh
└── windows
    └── settings.json
```

## vim

### frequently used files

`.local.vimrc` - local vimrc settings per folder, more info - https://vimawesome.com/plugin/localrc-vim

### frequently used key bindings

* `SQL`
  * `<leader>sel` - execute line
  * `<leader>se` - execute selection
