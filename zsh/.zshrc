#PLUGINS
zstyle ':completion:*' menu select
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' file-list all
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle :compinstall filename '/home/Voxalium/.zshrc'
autoload -Uz compinit
compinit
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#HISTFILE
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
#ALIASES
alias -- ..="cd .."
alias -- ls="ls --color=auto"
alias -- la="ls -la"
alias -- pu="pacman -Syu"
alias -- ps="pacman -S"
#CONF
alias -- neovimconf="nvim ~/.config/nvim/init.lua"
alias -- kittyconf="nvim ~/.config/kitty/kitty.conf"
alias -- awesomeconf="nvim ~/.config/awesome/"
alias -- zshconf="nvim ~/.zshrc"
#GIT
alias -- ga="git add"
alias -- gc="git commit -m"
alias -- gp="git push"
alias -- gs="git status"
#PROMPT
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
PROMPT="%B%F{#ff8020}%m%f%b %~ "$'\n'"%(?.%B->%b "
RPROMPT="%T %K{#ff8020}%B "\$vcs_info_msg_0_" %K%b"
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git*' formats '%b %m%u%c'
# Load Angular CLI autocompletion.
source <(ng completion script)
# #BIND
bindkey "^[[3~" delete-char
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey -e
