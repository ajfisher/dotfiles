#export PATH=~/Library/Python/2.7/bin/:$PATH

# add virtual env elements
source /usr/local/bin/virtualenvwrapper.sh
source /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
#source ~/.vim/bundle/powerline/powerline/bindings/shell/powerline.sh

export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export PATH=./node_modules/.bin/:$PATH

