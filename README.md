```
su root
apt install sudo git
sudo usermod -a -G sudo <username>
```
Must restart for sudo user changes to take effect

Make sure network is connected before running
```sh
./install.sh
```

#### Before installing any packages, move to Debian testing:
Edit your apt sources (/etc/apt/sources.list), changing 'stable' (or bookworm, the current codename for
stable) to 'testing' (or trixie, the current code name for the next stable
release).

Edit your security updates apt sources (anything with security.debian.org in it)
by changing 'stable' or bookworm to 'testing' or trixie.

Remove, disable or comment out any other stable-specific apt sources, like
*-backports or *-updates. Verify that your installation is not fixed to a
specific release in /etc/apt/apt.conf.d/00default-release

sudoedit /etc/apt/apt.conf.d00default-release
add the following
```sh
APT::Default-Release "testing"
```

add the following to /etc/apt/preferences.d/testing
```
Package: *
Pin: release a=testing
Pin-Priority: 900
```

##### Use codename 'trixie' to stay with testing until next stable release.

```sh
sudo apt update && sudo apt upgrade
```


#### Edit $PATH env variable in .bashrc and .zshrc
```sh
export PATH="$HOME/.local/bin:$PATH:/usr/local/go/bin:$PATH:/$HOME/go/bin"
```
#### Change env var nvim values to neovim

#### Change shell (logout for changes to take effect)
```sh
command -v zsh | sudo tee -a /etc/shells
sudo chsh -s $(which zsh) $USER
```
#### Change termial font to
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

Useful command for checking yt-dlp version:
```sh
curl -s https://api.github.com/repos/yt-dlp/yt-dlp/releases/latest | jq '.["tag_name"]'
```

Modify alias for bat, apt version downloads as batcat



