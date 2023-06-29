#!/usr/bin/env bash

# Franklin Souza
# @FranklinTech

# Atualização de pacotes
clear
pkg update && pkg upgrade

# Instalação de pacotes
clear
pkg install mpv startship neofetch git neovim zsh curl -y

# Configurações
chsh -s zsh
cd $HOME && wget -c "https://github.com/frannks/termux_setup/raw/main/.zshrc"
cd $HOME && wget -c "https://github.com/frannks/termux_setup/raw/main/.scripts"
#curl -fsSL https://starship.rs/install.sh | sh
mkdir $HOME/.config
cd $HOME/.config && wget -c "https://github.com/frannks/mydots/raw/main/.config/starship.toml"
cd $HOME && sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
clear && read -p 'Instalação e Configurações finalizadas com sucesso!!! PRESSIONE ENTER PARA CONTINUAR...'
clear && exit 0
