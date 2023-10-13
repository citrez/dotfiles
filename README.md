# Dotfiles
This is the place I keep my dot and config files.

brew.sh is for installing the software I like using homebrew on mac.
dotfiles (files beginning with a .) relate to git, zsh config and other.

I make a symlink between the dotfiles (.zshrc, .git etc) in my home directory and those in my ~/dotfiles folder.

Set up the symlinks as follows:
ln -s ~/dotfiles/zsh/zshrc.zsh ~/.zshrc
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

 
