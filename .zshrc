PS1='%n@%m %~$ '
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd notify
unsetopt beep
# bindkey -v

# manual keybindings
bindkey "^R" history-incremental-pattern-search-backward
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[3~" delete-char
bindkey '^[[3;5~' kill-word
bindkey "${terminfo[kcbt]}" reverse-menu-complete





# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mahmood/.zshrc'

autoload -Uz compinit
# WORDCHARS='_'
compinit
# End of lines added by compinstall
#
alias lg="eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa"

# Log pre-master SSL key
export SSLKEYLOGFILE=~/.ssl-key.log

alias inv="scp maqsam-development:~/.ssh/config ~/.ssh/config_md"
