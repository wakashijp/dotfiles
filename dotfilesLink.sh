#!/bin/sh

case ${OSTYPE} in
    darwin*)
        ln -sf /Users/m/dotfiles/dircolors ~/.dircolors
        ln -sf /Users/m/dotfiles/editorconfig ~/.editorconfig
        ln -sf /Users/m/dotfiles/gitconfig ~/.gitconfig
        ln -sf /Users/m/dotfiles/gitignore ~/.gitignore
        ln -sf /Users/m/dotfiles/tmux.conf ~/.tmux.conf
        ln -sf /Users/m/dotfiles/vimrc ~/.vimrc
        ln -sf /Users/m/dotfiles/zshenv ~/.zshenv
        ln -sf /Users/m/dotfiles/zshrc ~/.zshrc
        ln -sf /Users/m/dotfiles/zshrc.darwin ~/.zshrc.darwin
        ;;
    linux*)
        ln -sf /home/m/dotfiles/editorconfig ~/.editorconfig
        ln -sf /home/m/dotfiles/gitconfig ~/.gitconfig
        ln -sf /home/m/dotfiles/gitignore ~/.gitignore
        ln -sf /home/m/dotfiles/tmux.conf ~/.tmux.conf
        ln -sf /home/m/dotfiles/vimrc ~/.vimrc
        ln -sf /home/m/dotfiles/zshenv ~/.zshenv
        ln -sf /home/m/dotfiles/zshrc ~/.zshrc
        ln -sf /home/m/dotfiles/zshrc.linux ~/.zshrc.linux
        ;;
esac

