install="sudo apt install -y"
# Certain packages will install the entire associated desktop environment
# automatically.  --no-install-recommends fixes that
installNoRecommends="sudo apt install --no-install-recommends -y"

################
# APT PACKAGES #
################
$installNoRecommends nautilus
$installNoRecommends sddm

$install nala
$install firefox-esr
$install fzf
$install zsh
$install cava
$install pulseaudio
$install htop
$install arandr
$install atomicparsley
$install pavucontrol
$install trash-cli
$install alsa-utils
$install alsa-tools alsa-tools-gui
$install nodejs npm gcc
$install nitrogen
$install i3
$install xdotool
sudo nala remove i3lock
$install yarn
$install gimp
$install git
$install kitty
$install cmake
$install alacritty
$install polybar
$install rofi
$install mpd
$install mpc
$install clangd
$install fuse
$install lib2
$install unzip
$install wget
$install curl
$install xsel
$install x11-apps
$install libxcursor-dev
$install kid3 kid3-cli
$install lf
$install gzip
$install tar
$install picom
$install psmisc
$install ripgrep
$install ffmpeg
$install fd-find
$install bat
$install qtquickcontrols2-5-dev
$install qml-module-qtgraphicaleffects
$install kdenlive
$install neofetch
$install golang
$install luarocks
$install ruby
$install gem2deb
$install default-jre
$install default-jdk
$install javacc
$install php
$install composer
$install vim-julia

curl -fsSL https://install.julialang.org | sh
sudo luarocks install jsregexp
go install golang.org/x/tools/cmd/goimports@latest

# EZA (FOR FZF ZSH PLUGINS)
"$install" gpg
gpg
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza

# BRAVE
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# ZAP APP IMAGE PACKAGE MANAGER
sudo apt install fuse
sudo wget https://github.com/srevinsaju/zap/releases/download/continuous/zap-amd64 -O /usr/local/bin/zap
sudo chmod +x /usr/local/bin/zap
zap --help

# NEOVIM
zap install --github --from neovim/neovim
sudo ln -s ~/.local/bin/neovim /usr/bin/neovim

# INSTALL PIP AND PIP PACKAGES
sudo apt install python3-full
python3-venv python3 pipx pip
pipx yt-dlp beautysh

sudo npm install -g prettier
sudo npm install -g @fsouza/prettierd

# CARGO
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install stylua
cargo install xcolor

# TMUX PLUGIN MANAGER
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# Then open tmux and run prefix + I (capital I) to install all plugins

# NERD FONTS
cd Downloads/builds
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
./install.sh
fc-cache -fv
# Font is MononokiNerdFont (MononokiNerdFontMono doesn't exist in this download)

# LFIMG
$install ffmpegthumbnailer
$install imagemagick
$install wkhtmltopdf

# build epub-thumnailer from github
