# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.dotnet/tools:/usr/local/opt/node@8/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/cmoreside/.oh-my-zsh"

ZSH_THEME="avit"

plugins=(git z)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

if [ -f '/Users/cmoreside/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/cmoreside/bin/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/cmoreside/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/cmoreside/bin/google-cloud-sdk/completion.zsh.inc'; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
