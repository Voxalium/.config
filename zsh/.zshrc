#ALIASES
alias -- ..="cd .."
alias -- la="ls -la"
alias -- pu="pacman -Syu"
alias -- ps="pacman -S"
#CONF
alias -- neovimconf="nvim ~/.config/nvim/init.lua"
alias -- kittyconf="nvim ~/.config/kitty/kitty.conf"
alias -- awesomeconf="nvim ~/.config/awesome/"
alias -- zshconf="nvim ~/.zshrc"

#PROMPT
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

PROMPT="%B%F{#ff8020}%m%f%b %~ "$'\n'"%(?.%B->%b "
RPROMPT="%T %K{#ff8020}%B "\$vcs_info_msg_0_" %K%b"
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git*' formats '%b %m%u%c'
