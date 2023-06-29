#!/usr/bin/env bash

# Franklin Souza
# @FranklinTech

# Atualização de pacotes
init(){
  clear
  termux-change-repo
  pkg update && pkg upgrade
}

# Instalação de pacotes
packagesInstall(){
  clear
  pkg install mpv starship neofetch git neovim zsh curl -y
}

# Criando pastas
folderCreate(){
  clear
  mkdir $HOME/.config
  mkdir $HOME/.fonts
  mkdir $HOME/.config/nvim
}

config(){
  # Configurações
  chsh -s zsh
  curl -fsSL https://starship.rs/install.sh | sh
  cd $HOME && wget -c "https://github.com/frannks/termux_setup/raw/main/.zshrc"
  cd $HOME && wget -c "https://github.com/frannks/termux_setup/raw/main/.scripts"
  cd $HOME/.fonts && wget -c "https://github.com/frannks/mydots/raw/main/fonts/Hack_NF_Complete.ttf"
  cd $HOME/.fonts && wget -c "https://github.com/frannks/mydots/raw/main/fonts/MesloLGS%20NF%20Regular.ttf"
  cd $HOME/.fonts && wget -c "https://github.com/frannks/mydots/raw/main/fonts/Poppins.otf"
  cd $HOME/.config && wget -c "https://github.com/frannks/mydots/raw/main/.config/starship.toml"
  cd $HOME/.config/nvim && wget -c "https://github.com/frannks/mydots/raw/main/.config/nvim/init.vim"
  cd $HOME && sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  clear && read -p 'Instalação e Configurações finalizadas com sucesso!!! PRESSIONE ENTER PARA CONTINUAR...'
  clear && exit 0
}
init
packagesInstall
folderCreate
config
