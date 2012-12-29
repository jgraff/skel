export TERM=xterm-256color

. $HOME/skel/aliases
. $HOME/skel/functions

# Setup Python's Virtual Env if installed
if [ -s /usr/local/bin/virtualenvwrapper.sh ]; then
  export WORKON_HOME=$HOME/.virtualenvs
  export PROJECT_HOME=$HOME/Devel
  source /usr/local/bin/virtualenvwrapper.sh
fi

# Setup Ruby's RVM if installed
if [ -s $HOME/.rvm/scripts/rvm ]; then
  source $HOME/.rvm/scripts/rvm 
fi

# Add paths for node modules, brew installs, and personal 
# scripts/binaries
for path in $HOME/node_modules/.bin /usr/local/bin $HOME/bin; do
  if [ -d "$path" ]; then
    PATH=$path:$PATH
  fi
done

export PATH
export P4CONFIG=.p4config
