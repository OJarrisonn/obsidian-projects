# Debloat
```
sudo apt remove -y pop-shop gnome-contacts libreoffice* firefox modemmanager && sudo apt autoremove -y && sudo apt update && sudo apt upgrade -y

```
# Nix
```
sh <(curl -L https://nixos.org/nix/install) --daemon
nix-env -iA nixpkgs.google-chrome nixpkgs.vscode nixpkgs.asdf-vm nixpkgs.zsh nixpkgs.tailscale nixpkgs.gh nixpkgs.fd nixpkgs.vim nixpkgs.ranger
echo 'export XDG_DATA_DIRS=/home/$USER/.nix-profile/share/applications:$XDG_DATA_DIRS'
```
