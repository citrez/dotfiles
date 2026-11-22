source "$HOME/dotfiles/zsh/alias.zsh"

# Add Node 20 when installed through Homebrew; other machines can use their own Node version.
if command -v brew >/dev/null 2>&1; then
  node20_prefix="$(brew --prefix node@20 2>/dev/null)"
  if [[ -d "$node20_prefix/bin" ]]; then
    export PATH="$node20_prefix/bin:$PATH"
  fi
fi

# Keep machine-specific paths and credentials outside this repository.
[[ -r "$HOME/.config/zsh/local.zsh" ]] && source "$HOME/.config/zsh/local.zsh"

autoload -Uz compinit && compinit
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats '[%b]'
precmd() { vcs_info }
setopt PROMPT_SUBST
PROMPT='%F{197}%3~%f ${vcs_info_msg_0_} %# '

