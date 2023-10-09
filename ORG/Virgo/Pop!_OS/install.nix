{ pkgs ? import <nixpkgs> {} }:

{
    inherit (pkgs)
        asdf-vm
        docker
        fd
        gh
        google-chrome
        ranger
        tailscale
        vim
        vscode
        zsh;
}