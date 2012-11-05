export TERM=xterm-256color

. $HOME/skel/aliases
. $HOME/skel/functions

if [ -s /usr/local/bin/virtualenvwrapper.sh ]; then
  export WORKON_HOME=$HOME/.virtualenvs
  export PROJECT_HOME=$HOME/Devel
  source /usr/local/bin/virtualenvwrapper.sh
fi

if [ -s $HOME/.rvm/scripts/rvm ]; then
  source $HOME/.rvm/scripts/rvm 
fi

if [ -d /usr/local/bin ]; then
  export PATH=/usr/local/bin:$PATH
fi
