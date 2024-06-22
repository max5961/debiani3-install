Move to Debian testing

Edit $PATH env variable in .bashrc and .zshrc
```sh
export PATH="$HOME/.local/bin:$PATH:/usr/local/go/bin:$PATH:/$HOME/go/bin"
```
Change env var nvim values to neovim

Change shell (logout for changes to take effect)
```sh
command -v zsh | sudo tee -a /etc/shells
sudo chsh -s $(which zsh) $USER
```
Change termial font to
```
MononokiNerdFont
```

Go to i3 autotile github and follow instructions

Go to lfimg github and follow instructions
- will need to build epub-thumbnailer from the github

Upon opening tmux for the first time run:
- prefix + I (capital I) to install plugins

Might need to replace part of tmux.conf with:
```
set -g default-terminal "xterm-kitty"
set option -sa terminal-overrides ",xterm*:Tc"
```


