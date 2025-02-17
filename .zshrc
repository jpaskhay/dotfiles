## Colorize the ls output ##
alias ls='ls -G'
 
## Use a long listing format ##
alias ll='ls -la'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'

# Confirm overriding moves
alias mv='mv -i'

# History related, zsh specific
alias history='history 1'
export HISTSIZE=50000
export SAVEHIST=50000
export HISTFILE=$HOME/.zsh_history
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS

export EDITOR=vim
export PS1='[%n@%m %1~]%(!.#.$) '

# don't copy terminal formatting
defaults write com.apple.Terminal CopyAttributesProfile com.apple.Terminal.no-attributes

# Bash-like navigation
autoload -U select-word-style
select-word-style bash

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# Set JDK version
function setjdk() {
  if [ $# -ne 0 ]; then
   removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
   if [ -n "${JAVA_HOME+x}" ]; then
    removeFromPath $JAVA_HOME
   fi
   export JAVA_HOME=`/usr/libexec/java_home -v $@`
   export PATH=$JAVA_HOME/bin:$PATH
  fi
 }
 function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
 }

setjdk 23

# Created by `pipx` on 2022-05-02 23:12:07
export PATH="$PATH:$HOME/.local/bin"
