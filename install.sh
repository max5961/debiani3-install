# APT PACKAGES
sudo apt install --no-install-recommends -y thunar sddm
sudo apt install -y i3
sudo apt remove i3lock

sudo apt install -y \
    nala \
    firefox-esr \
    fzf \
    zsh \
    cava \
    pulseaudio \
    htop \
    arandr \
    atomicparsley \
    pavucontrol \
    trash-cli \
    alsa-utils \
    alsa-tools alsa-tools-gui \
    nodejs npm gcc \
    nitrogen \
    xdotool \
    yarn \
    gimp \
    git \
    x11-xserver-utils \
    kitty \
    cmake \
    alacritty \
    polybar \
    rofi \
    mpd \
    mpc \
    ncmpcpp \
    clangd \
    fuse \
    unzip \
    wget \
    curl \
    xsel \
    x11-apps \
    libxcursor-dev \
    kid3 kid3-cli \
    gzip \
    tar \
    picom \
    psmisc \
    jq \
    ripgrep \
    ffmpeg \
    fd-find \
    tmux \
    bat \
    qtquickcontrols2-5-dev \
    qml-module-qtgraphicaleffects \
    kdenlive \
    neofetch \
    golang \
    luarocks \
    ruby \
    gem2deb \
    default-jre \
    default-jdk \
    javacc \
    php \
    composer \
    vim-julia \
    lf \
    pulseaudio \
    lxpolkit \
    libx11-dev \
    libxft-dev \
    libxinerama-dev \
    libx11-xcb-dev \
    libxcb-res0-dev \
    xdg-utils \
    lxappearance \
    blackbird-gtk-theme

curl -fsSL https://install.julialang.org | sh
sudo luarocks install jsregexp
go install golang.org/x/tools/cmd/goimports@latest

# EZA (FOR FZF ZSH PLUGINS)
# sudo apt install -y gpg
# sudo mkdir -p /etc/apt/keyrings
# wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
# echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
# sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
# sudo apt update
# sudo apt install -y eza

# BRAVE
sudo apt install -y curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser

# ZAP APP IMAGE PACKAGE MANAGER
sudo wget https://github.com/srevinsaju/zap/releases/download/continuous/zap-amd64 -O /usr/local/bin/zap
sudo chmod +x /usr/local/bin/zap
zap --help

# NEOVIM FROM ZAP
zap install --github --from neovim/neovim
sudo ln -s ~/.local/bin/neovim /usr/bin/neovim

# BITWARDEN FROM ZAP
zap install --github --from bitwarden/clients
sudo ln -s ~/.local/bin/clients /usr/bin/bitwarden

# VSCODIUM
zap install --github --from vscodium/vscodium

# INSTALL PIP AND PIP PACKAGES
sudo apt install python3-full python3-venv python3 pipx pip
pipx install yt-dlp beautysh

sudo npm install -g prettier
sudo npm install -g @fsouza/prettierd
sudo npm install -g tsc

# CARGO
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install stylua
cargo install xcolor

# TMUX PLUGIN MANAGER
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# NERD FONTS
mkdir -p Downloads/builds
cd Downloads/builds
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
./install.sh
fc-cache -fv

# LFIMG
sudo apt install -y \
    ffmpegthumbnailer \
    imagemagick \
    wkhtmltopdf
