#!/usr/bin/env bash

# Franklin Souza
# @FranklinTech

# Atualização de pacotes
clear
pkg update && pkg upgrade

# Variaveis
sconfig=$(wget -c "https://github.com/frannks/mydots/raw/main/.config/starship.toml")
nvim_plug=$(sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
zshrcDown=$(wget -c "https://github.com/frannks/termux_setup/raw/main/.zshrc")
scriptsDown=$(wget -c "https://github.com/frannks/termux_setup/raw/main/.scripts")

# Instalação de pacotes
clear
pkg install mpv neofetch git neovim zsh curl -y

# Configurações
chsh -s zsh
cd $HOME && "$zshrcDown"
cd $HOME && "$scriptsDown"
curl -fsSL https://starship.rs/install.sh | sh
mkdir $HOME/.config && cd $HOME/.config && "$sconfig"
"$nvim_plug"
clear && read -p 'Instalação e Configurações finalizadas com sucesso!!! PRESSIONE ENTER PARA CONTINUAR...'
clear && exit 0
