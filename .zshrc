export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

HYPHEN_INSENSITIVE="true"

plugins=(git ssh-agent zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration
alias vim=nvim
alias inv="scp maqsam-development:~/.ssh/config ~/.ssh/config_mq"
for key in ~/.ssh/id_*; do
  if [[ ! $key =~ \.pub$ ]] && [[ -f $key ]]; then
    ssh-add -l | grep -q "$(ssh-keygen -lf $key 2>/dev/null | awk '{print $2}')" || ssh-add "$key" 2>/dev/null
  fi
done
export CLIPHIST_MAX_ITEMS=1000
