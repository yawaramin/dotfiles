# Dotfiles

How to use:

## Bashrc

    # ~/.bash_profile
    source ~/src/dotfiles/bashrc

## Gitconfig

    # ~/.gitconfig
    [include]
      path = ~/src/dotfiles/gitconfig

## Vimrc

    " ~/.vimrc
    so ~/src/dotfiles/vimrc

## Vscode.json

    cd ~/Library/Application Support/Code/User
    ln -s ~/src/dotfiles/vscode.json settings.json

