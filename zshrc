# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

[[ -r ~/Repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git ~/Repos/znap
source ~/Repos/znap/znap.zsh

# `znap prompt` makes your prompt visible in just 15-40ms!
znap prompt sindresorhus/pure

# `znap source` starts plugins.
znap source marlonrichert/zsh-autocomplete

# `znap eval` makes evaluating generated command output up to 10 times faster.
znap eval iterm2 'curl -fsSL https://iterm2.com/shell_integration/zsh'

# `znap function` lets you lazy-load features you don't always need.
znap function _pyenv pyenv "znap eval pyenv 'pyenv init - --no-rehash'"
compctl -K    _pyenv pyenv

# `znap install` adds new commands and completions.
znap install aureliojargas/clitest zsh-users/zsh-completions

#Aliases:
alias c="clear"
alias ls="exa"
alias l="ls"
alias st="speedtest"
alias ll="ls -l"
alias la="ls -la"
alias lr="ll --tree"
alias tree="tree -ph"
alias f="find ~/ -name"
alias fs="find / -name"
alias update_shell="source ~/.zshrc"
# GIT aliases
alias gs="git status"
alias gr="git pull --rebase"
alias gri="git rebase --interactive"
alias grc="git rebase --continue"
alias gl="git log"
alias t="tig"
alias ga="git commit --amend"
alias gc="git commit"
alias gaa="git add -A"
alias gp="git push"
alias gb="git branch"
alias gch="git checkout"
alias gchb="gch -b"
alias grp="git pull --rebase && git push"

c