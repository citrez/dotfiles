# config_files
Keep config files here

brew.sh is for installing the sortware I like using homebrew on mac.

dotfiles relate to git, zsh config and other.

I need to make a symlink between the dotfiles (.zshrc, .git etc) in my home directory and those in my ~/dotfiles folder.

To set up the needed symlinks
ln -s ~/dotfiles/zsh/zshrc.zsh ~/.zshrc
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

 
