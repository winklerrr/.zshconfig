################## UPDATER ##################
### TODO: IMPLEMENT BETTER UPDATER

pushd $PWD > /dev/null

# PULL MY ZSHCONFIG
echo '### Update ZSHCONFIG ###' && git pull -q

# PULL SUBMODULES
echo '### Update all submodules ###' && git submodule update --init --recursive --quiet

popd > /dev/null

################## ALIASES ##################
### FOR A FULL LIST OF ACTIVE ALIASES, RUN `alias` ###

# UNALIAS ALL BEFORE ALIASING AGAIN
unalias -m "*"

# GENERAL
alias c=clear
alias ls="ls -aG"
alias md=mkdir

# SUDO LAST COMMAND
alias doch='sudo $(fc -ln -1)'

# CHANGE DIR
alias ~="cd ~"
alias /="cd /"

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
alias gs="git status --short"
alias ga="git add"
alias gaa="git add ."
alias gp="git pull"
alias gpsh="git push"
alias gd="git diff"
alias gdc="git diff --cached"

# ZSH
alias reload="source ~/.zshrc > /dev/null && echo 'ZSH config reloaded from ~/.zshrc'"
alias zshrc="vim ~/.zshrc && reload"

# SERVER
alias server="ssh -i .ssh/id_rsa_1und1_server root@sandrowinkler.com"

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

# GIT COMMIT WITHOUT OR WITH MESSAGE,
# DEPENDING ON INPUT
function gc() {
  if [ -z "$1" ]; then
    git commit 
  else 
    git commit -m "$*"
  fi
}

################## OPTIONS ##################

# ENABLE VIM
bindkey -v  

# NO BEEP
setopt No_Beep

# REDUCE TIME TO SWITCH BETWEEN VIMS INSERT AND NORMAL MODE
export KEYTIMEOUT=1 

################## PROMPT ##################

# LEFT PROMPT
PROMPT='
%{$fg[red]%}%n%{$reset_color%} :: %{$fg[magenta]%}%~%{$reset_color%}
--> '

# RIGHT PROMPT
RPROMPT='[%{$fg_no_bold[yellow]%}%?%{$reset_color%}] | %D | %T'

################## PLUGINS ##################

# SYNTAX HIGHLIGHTING
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# HISTORY SUBSTRING SEARCH
# BIND UP AND DOWN ARROW KEYS
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# BIND K AND J FOR VI MODE
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# NOW LOAD HISTORY SUBSTRING
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
