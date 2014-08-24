[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
cd $HOME/workspace/

export PATH="$HOME/.parts/autoparts/bin:$PATH"
eval "$(parts init -)"
