# Dotfiles

How to use:

## Bashrc

    # ~/.bash_profile
    source ~/src/dotfiles/bashrc

## Gitconfig

https://github.com/yawaramin/dotfiles/blob/ed8b112ec57665039745a8195e0ed9fd43456d59/gitconfig#L12-L17

    # ~/.gitconfig
    [include]
      path = ~/src/dotfiles/gitconfig

## Vimrc

    " ~/.vimrc
    so ~/src/dotfiles/vimrc

## Vscode.json

    cd ~/Library/Application Support/Code/User
    ln -s ~/src/dotfiles/vscode.json settings.json

