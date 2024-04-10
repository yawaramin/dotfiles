# Dotfiles

How to use:

## Bashrc

    # ~/.bash_profile
    source ~/src/github.com/yawaramin/dotfiles/bashrc

## Gitconfig

    # ~/.gitconfig
    [include]
      path = ~/src/github.com/yawaramin/dotfiles/gitconfig

## Utop init

    cp ~/src/github.com/yawaramin/dotfiles/utop_init.ml ~/.config/utop/init.ml

## Vimrc

    " ~/.vimrc
    so ~/src/github.com/yawaramin/dotfiles/vimrc

## Vscode.json

    cd ~/Library/Application Support/Code/User
    ln -s ~/src/github.com/yawaramin/dotfiles/vscode.json settings.json

