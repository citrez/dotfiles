# Dotfiles

Portable personal setup for macOS. The repository contains shell and Git preferences, optional Vim and Terminal settings, and a Homebrew Bundle manifest for the tools installed on my current Mac.

## Install

1. Install Git and Homebrew.
2. Clone this repository to `~/dotfiles`.
3. Install the Homebrew packages you want:

   ```sh
   brew bundle --file="$HOME/dotfiles/brew/Brewfile"
   ```

4. Back up any existing dotfiles, then link the tracked configs:

   ```sh
   ln -s "$HOME/dotfiles/zsh/zshrc.zsh" "$HOME/.zshrc"
   ln -s "$HOME/dotfiles/zsh/zprofile.zsh" "$HOME/.zprofile"
   ln -s "$HOME/dotfiles/zsh/zshenv.zsh" "$HOME/.zshenv"
   ln -s "$HOME/dotfiles/git/gitconfig" "$HOME/.gitconfig"
   ```

   To use the Vim settings, link `vim/vimrc.vim` to `~/.vimrc`.

The zsh startup files detect Homebrew in either the Apple Silicon or Intel default location. `zsh/zshrc.zsh` prefers Node 20 when it is installed and otherwise leaves `PATH` alone.

## Machine-specific settings

Put personal paths, work aliases, and credentials in `~/.config/zsh/local.zsh`. The shared zsh config loads that file if it exists. Keep credentials in a password manager, environment-specific secret store, or the service's own login tool; do not put them in this repository.

The Brewfile is a snapshot of useful direct installs, not a requirement to install every app on every machine. It does not include Mac App Store apps or application data. Review it before running `brew bundle` on a new computer.

## Sensitive history cleanup

An older revision of `zsh/oodle_alias.zsh` included credentials. Those credentials must be revoked or rotated. This prepared branch removes that file from its history. GitHub and other existing clones still retain the old commits until the rewritten branches are published; coordinate a force-push with anyone who has a clone.
