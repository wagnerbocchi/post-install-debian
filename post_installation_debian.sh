#!/bin/bash

# Executar comandos a seguir para atualizar os pacotes
sudo apt update -y
sudo apt upgrade -y


# Instalar pacotes a seguir
#sudo apt install git curl build-essential dkms perl wget -y
#sudo apt install gcc make default-libmysqlclient-dev libssl-dev -y
#sudo apt install -y zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm \
 # libncurses5-dev libncursesw5-dev \
  #xz-utils tk-dev libffi-dev liblzma-dev python3-openssl git
  
# Pyenv##
#Pyenv depêndencias 
sudo apt update; sudo apt install build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl git \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

#Pyenv Intaller
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
# Seguir instruções do Pyenv

# Baixar e instalar VS Code: https://code.visualstudio.com/download

# Abaixo tudo é opcional

# Instalar e configurar ZSH
sudo apt install zsh -y
chsh -s /bin/zsh
zsh

# Instalar Oh-my-zsh! -> https://ohmyz.sh/
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Instalar Spaceship Prompt
# https://github.com/spaceship-prompt/spaceship-prompt
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Mudar ~/.zshrc -> ZSH_THEME="agnoster"

# Instalar Zsh Autosuggestions
# https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Instalar Zsh Syntax Highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Mudar plugins
# plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Instalar Vscodium
#Adicionar a GPG key do respositório:
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg

# Adicionar repo
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list

# Instalar Vscodium
sudo apt update && sudo apt install codium


# REBOOT!!!!!!!!!!!!!!!!!!!!!
