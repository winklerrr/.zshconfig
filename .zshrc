################## UPDATER ##################
### TODO: implement better updater

pushd $PWD > /dev/null

# PULL MY ZSHCONFIG
echo '### Update ZSHCONFIG ###' && git pull -q

# PULL SUBMODULES
echo '### Update all submodules ###' && git submodule update --init --recursive --quiet

popd > /dev/null

################## ALIASES ##################
### For a full list of active aliases, run `alias` ###

# GENERAL
alias c=clear
alias ls="ls -aG"
alias md=mkdir

# sudo last command
alias doch='sudo $(fc -ln -1)'

# CHANGE DIR
alias ~="cd ~"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../.."
alias ..5="cd ../../.."

# GIT
alias g=git
alias gs="git status"
alias ga="git add ."
alias gc="git commit"
alias gp="git pull"
alias gpsh="git push"

# ZSH
alias reload="source ~/.zshrc > /dev/null && echo 'ZSH config reloaded from ~/.zshrc'"
alias zshrc="vim ~/.zshrc && reload"

# SERVER
alias server="ssh -i .ssh/id_rsa_1und1_server root@s18641328.onlinehome-server.info"

################## AUTOLOAD ##################

# COLORS
autoload -Uz colors && colors

# PROMPT
autoload -Uz promptinit && promptinit && setopt prompt_subst

# AUTO COMPLETIONS
autoload -Uz compinit && compinit

################## FUNCTIONS ##################

# CHANGE DIR
function cd() {
  builtin cd "$@" && ls
}

################## OPTIONS ##################

# ENABLE VIM
bindkey -v  

# REDUCE TIME TO SWITCH BETWEEN VIMS INSERT AND NORMAL MODE
export KEYTIMEOUT=1 

# HISTORY SUBSTRING

################## PROMPT ##################

# LEFT PROMPT
PROMPT='
%{$fg[red]%}%n%{$reset_color%} :: %{$fg[magenta]%}%1~%{$reset_color%}
--> '

# RIGHT PROMPT
RPROMPT='[%{$fg_no_bold[yellow]%}%?%{$reset_color%}] | %D | %T'

################## PLUGINS ##################

# SYNTAX HIGHLIGHTING
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# HISTORY SUBSTRING SEARCH
# bind up and down arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# bind k and j for vi mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
