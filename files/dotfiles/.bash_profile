#
# .bash_profile
#
# @author Jeff Geerling
# @see .inputrc
#

# Nicer prompt.
export PS1="\[\e[0;32m\] \[\e[1;32m\]\t \[\e[0;2m\]\w \[\e[0m\]\$ "

# Use colors.
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Custom $PATH with extra locations.
export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:/usr/local/git/bin:$HOME/.composer/vendor/bin:$PATH

# Include alias file (if present) containing aliases for ssh, etc.
if [ -f ~/.bash_aliases ]
then
  source ~/.bash_aliases
fi

# Include bashrc file (if present).
if [ -f ~/.bashrc ]
then
  source ~/.bashrc
fi

# Syntax-highlight code for copying and pasting.
# Requires highlight (`brew install highlight`).
function pretty() {
  pbpaste | highlight --syntax=$1 -O rtf | pbcopy
}

# Git aliases.
#alias gs='git status'
#alias gc='git commit'
#alias gp='git pull --rebase'
#alias gcam='git commit -am'
#alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'

# Git upstream branch syncer.
# Usage: gsync master (checks out master, pull upstream, push origin).
#function gsync() {
#  if [[ ! "$1" ]] ; then
#      echo "You must supply a branch."
#      return 0
#  fi
#
#  BRANCHES=$(git branch --list $1)
#  if [ ! "$BRANCHES" ] ; then
#     echo "Branch $1 does not exist."
#     return 0
#  fi
#
#  git checkout "$1" && \
#  git pull upstream "$1" && \
#  git push origin "$1"
#}

# Tell homebrew to not autoupdate every single time I run it (just once a week).
export HOMEBREW_AUTO_UPDATE_SECS=604800
export HOMEBREW_NO_AUTO_UPDATE=1

# Turn on Git autocomplete.
# brew_prefix=`brew --prefix`
brew_prefix='/usr/local'
if [ -f $brew_prefix/etc/bash_completion ]; then
  . $brew_prefix/etc/bash_completion
fi

# Turn on kubectl autocomplete.
if [ -x "$(command -v kubectl)" ]; then
  source <(kubectl completion bash)
fi

# Use brew-installed PHP binaries.
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"

# Use nvm.
# export NVM_DIR="$HOME/.nvm"
# . "$brew_prefix/opt/nvm/nvm.sh"

# Use rbenv.
# if [ -f /usr/local/bin/rbenv ]; then
#   eval "$(rbenv init -)"
# fi

# Python settings.
export PYTHONPATH="/usr/local/lib/python2.7/site-packages"

# Super useful Docker container oneshots.
# Usage: dockrun, or dockrun [centos7|fedora27|debian9|debian8|ubuntu1404|etc.]
#dockrun() {
#  docker run -it geerlingguy/docker-"${1:-ubuntu1604}"-ansible /bin/bash
#}

# Enter a running Docker container.
#function denter() {
#  if [[ ! "$1" ]] ; then
#      echo "You must supply a container ID or name."
#      return 0
#  fi
#
#  docker exec -it $1 bash
#  return 0
#}

# Docker image visualization (usage: `dockviz images -t`).
#alias dockviz="docker run --rm -v /var/run/docker.sock:/var/run/docker.sock nate/dockviz"


#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
