{ pkgs ? import <nixpkgs> {} }:

{
    inherit (pkgs)
        asdf-vm
        fd
        gh
        google-chrome
        ranger
        tailscale
        vim
        vscode
        zsh
}