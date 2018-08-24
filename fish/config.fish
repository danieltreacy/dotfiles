# fish config

# use vim, i'm not an animal
set -U EDITOR vim

# load everything in ~/bin
set PATH $HOME/bin $PATH

# install jenv
# set PATH $HOME/.jenv/bin $PATH
jenv init ->/dev/null
export JAVA_HOME=$HOME/.jenv/versions/(jenv version-name)

function reload
  source $HOME/.config/fish/config.fish
end

bass source $HOME/bin/exports.sh

bass source ~/.nvm/nvm.sh --no-use ';' nvm>/dev/null

# istio
set PATH $HOME/istio/istio-0.2.12/bin $PATH
