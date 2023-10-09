# Setup do WSL
No WSL
``` bash
echo "%wheel ALL=(ALL) ALL" > /etc/sudoers.d/wheel

useradd -m -G wheel -s /bin/bash ojarrisonn_

passwd ojarrisonn_

exit
```
No Powershell
```ps
Arch.exe config --default-user ojarrisonn_
```
Reinicia o WSL
``` bash
sudo pacman-key --init
sudo pacman-key --populate
sudo pacman -Sy archlinux-keyring
```
# Gerenciadores de Pacotes/Versões
## Pacman
Configurar downloads paralelos:
```
/etc/pacman.conf
| ParallelDownloads = 5
```
Atualizar o sistema:
``` bash
sudo pacman -Syy
sudo pacman -Syuu
```
## Yay
Instalar: 
``` bash
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
```
Pacotes basicos via yay: 
```
curl, wget, zsh, unzip, openssh, make, cmake
```
Pacotes utilitários via yay:
```
ranger, tailscale, github-cli, fd, asdf-vm, zsh-theme-powerlevel10k-git, neovim, lazygit, htop
```
## ASDF
Ativar:
```bash
echo "source /opt/asdf-vm/asdf.sh" >> ~/.zshrc
```
Plugins a instalar:
``` bash
asdf plugin add bun
asdf plugin add nodejs
asdf plugin add python
asdf plugin add rust
```
Instalar versões
```bash
asdf install <name> latest
```
Configurar rust:
```bash
echo 'source "/home/ojarrisonn_/.asdf/installs/rust/1.73.0/env"'' >> ~/.zshrc

~/.zshrc
| export PATH=/home/ojarrisonn_/.asdf/installs/rust/1.73.0/bin:$PATH
```
## Cargo
Binários a instalar:
```
eza zoxide bat ripgrep ytop
```
# ZSH
## powerlevel10k
Ativar:
```
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```
Ativar o zsh:
```
chsh -s /usr/bin/zsh
```
## ZSH-Autosuggestions
Instalar:
```
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```
Ativar:
```
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
```
## Aliases
```
alias gs='git status'
alias gf='git fetch'
alias gc='git clone'
alias gi='git init'
alias gps='git push'
alias gpl='git pull'
alias gco='git checkout'
alias eza='eza -halF --icons --color=auto'
alias rgr='. ranger'
alias bat='bat --style=auto'
alias zd='z'
```
# Git
Gerar chaves SSH
```
ssh-keygen -t ed25519 -C "j.h.m.t.v.10@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
bat ~/.ssh/id_ed25519.pub
```
## GH
```
gh auth login
```
# Ranger
Installing icons
```bash
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
echo "default_linemode devicons" >> $HOME/.config/ranger/rc.conf
```
# Docker
Iniciar o Docker Desktop
Adicionar usuário
```
sudo usermod -aG docker ojarrisonn_
```

# Tailscale
Ativar
```
sudo systemctl enable --now tailscaled
```
Configurar
```
sudo tailscale up
sudo tailscale login
```
# Lunar VIM
Instalar:
```bash
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
```