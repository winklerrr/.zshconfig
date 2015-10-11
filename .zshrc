################## AUTOLOAD ##################

# COLORS
autoload -Uz colors && colors

# PROMPT
autoload -Uz promptinit && promptinit && setopt prompt_subst

# AUTO COMPLETIONS
autoload -Uz compinit && compinit

################## FUNCTIONS ##################

# CHANGE DIR
function cd {
  builtin cd "$@" && ls
}

################## OPTIONS ##################

# ENABLE VIM
bindkey -v  

# REDUCE TIME TO SWITCH BETWEEN VIMS INSERT AND NORMAL MODE
export KEYTIMEOUT=1 

# SET PROMPT
# LEFT PROMPT
PROMPT='
%{$fg[red]%}%n%{$reset_color%} :: %{$fg[magenta]%}%1~%{$reset_color%}
--> '

# RIGHT PROMPT
RPROMPT='[%{$fg_no_bold[yellow]%}%?%{$reset_color%}] | %D | %T'

# HISTORY SUBSTRING
# BIND UP AND DOWN ARROW KEYS
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# BIND K AND J FOR VI MODE
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

################## ALIASES ##################
### For a full list of active aliases, run `alias` ###

# GENERAL
alias c=clear
alias ls="ls -aG"
alias md=mkdir

alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# GIT
alias g=git
alias gs="git status"
alias ga="git add ."
alias gc="git commit"
alias gp="git pull"
alias gps="git push"

# ZSH
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias zshrc="vim ~/.zshrc && reload"

# SERVER
alias server="ssh -i .ssh/id_rsa_1und1_server root@s18641328.onlinehome-server.info"

################## PLUGINS ##################

# SYNTAX HIGHLIGHTING
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# HISTORY SUBSTRING SEARCH
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

git pull
