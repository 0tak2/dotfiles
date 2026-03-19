# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Starship
eval "$(starship init zsh)"

# User configuration
## Start SSH Agent
eval "$(ssh-agent -s)" >/dev/null 2>&1
ssh-add --apple-use-keychain ~/.ssh/github_id_ed25519 >/dev/null 2>&1

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/limo/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/limo/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/limo/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/limo/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/Users/limo/miniforge3/etc/profile.d/mamba.sh" ]; then
    . "/Users/limo/miniforge3/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

# JDK
export JAVA_HOME="/Library/Java/JavaVirtualMachines/temurin-21.jdk/Contents/Home"
export PATH="$PATH:$JAVA_HOME/bin"

# PyEnv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
eval "$(~/.local/bin/mise activate zsh)"

# Go
export PATH=$PATH:$(go env GOPATH)/bin
[[ -s "/Users/limo/.gvm/scripts/gvm" ]] && source "/Users/limo/.gvm/scripts/gvm"
source ${HOME}/.ghcup/env

fastfetch

