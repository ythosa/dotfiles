# export PATH=$HOME/bin:/usr/local/bin:$PATH # If you come from bash you might have to change your $PATH.

export ZSH="$HOME/.oh-my-zsh" # Path to your oh-my-zsh installation.
ZSH_THEME="simple" # See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# CASE_SENSITIVE="true" # Uncomment the following line to use case-sensitive completion
# DISABLE_MAGIC_FUNCTIONS="true" # Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_LS_COLORS="true" # Uncomment the following line to disable colors in ls.
# DISABLE_AUTO_TITLE="true" # Uncomment the following line to disable auto-setting terminal title.
# ENABLE_CORRECTION="true" # Uncomment the following line to enable command auto-correction.
COMPLETION_WAITING_DOTS="true"
# ZSH_CUSTOM=/path/to/new-custom-folder # Would you like to use another custom folder than $ZSH/custom?

plugins=(
  git
  docker
  docker-compose
  kubectl
  helm
  zsh-syntax-highlighting
  tmux
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# >>>> User configuration >>>>
# export ARCHFLAGS="-arch x86_64" # Compilation flags

# jumps in terminal
bindkey -e
bindkey '\e\e[C' forward-word
bindkey '\e\e[D' backward-word

# shortcuts
alias puf="git add . && git commit --amend --no-edit && git push --force"
alias python=python3

# kubectl
alias kdev="kubectl config use-context o-dev"
alias kstg="kubectl config use-context o-stg"
alias kinf="kubectl config use-context o-prod-infra"
alias kprd="kubectl config use-context o-prod"

# texlive
export PATH=$PATH:/opt/homebrew/Cellar/texlive/20230313/bin

# plantuml
export PLANTUML_JAR=/opt/homebrew/Cellar/plantuml/1.2024.4/libexec/plantuml.jar

# openjdk
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export JAVA_HOME=/opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH

# go
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
export PATH=$PATH:~/go/bin
export GOPROXY=https://proxy.golang.org
# export PATH="/opt/homebrew/opt/go@1.19/bin:$PATH"
# export PATH="/opt/homebrew/opt/go@1.22/bin:$PATH"
# export PATH="/opt/homebrew/opt/go@1.23/bin:$PATH"
export PATH="/opt/homebrew/opt/go@1.24/bin:$PATH"


# nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# other
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/opt/jpeg/bin:$PATH"

# opam 
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
# [[ ! -r '/Users/rbabin/.opam/opam-init/init.zsh' ]] || source '/Users/rbabin/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
