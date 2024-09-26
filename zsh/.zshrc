#ALIAS
alias python=python3
alias clang++='clang++ -std=c++11'
#THEME
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

#SET XDG PATH
export XDG_CONFIG_HOME="$HOME/.config"

#SET ZDOTDIR
export ZDOTDIR="$HOME/.config/zsh"

#KEYBIND

bindkey -s '^n' 'zk edit --interactive\n'

#JAVA PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home/
#CHECKER PATH
export CHECKERFRAMEWORK=${HOME}/code/checker-framework
export PATH=$CHECKERFRAMEWORK/checker/bin:${PATH}
#CHECKER ALIAS
alias javacheck='$CHECKERFRAMEWORK/checker/bin/javac'
## PATH
export MAGICK_HOME=/opt/homebrew/opt/imagemagick/
export PATH="/opt/homebrew/opt/imagemagick/bin:$PATH"
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"
export PATH="/opt/homebrew/opt/imagemagick@6/bin:$PATH"
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/usr/bin/python3:$PATH
