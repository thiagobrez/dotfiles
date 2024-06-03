export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:ANDROID_HOME/emulator
export PATH=$PATH:ANDROID_HOME/platform-tools
export PATH=$PATH:$(yarn global bin)

# Aliases
alias ls="eza -a --no-user --no-time"
alias cat="bat"
alias compress-video="sh $HOME/scripts/compress-video.sh"

## React Native Aliases
alias pod-install-new="bundle install && RCT_NEW_ARCH_ENABLED=1 bundle exec pod install"
alias pod-install-old="bundle install && bundle exec pod install"


export PATH=/opt/homebrew/bin:$PATH

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

source ~/.rvm/scripts/rvm
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# #THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# bun completions
[ -s "/Users/okwasniewski/.bun/_bun" ] && source "/Users/okwasniewski/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
eval "$(direnv hook bash)"
alias python=/usr/bin/python3


export LANG=en_US.UTF-8
