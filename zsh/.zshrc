#AUTOCOMPLETE
source $HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# not sure why this opt is required, found in issue https://github.com/marlonrichert/zsh-autocomplete/issues/761 
setopt interactivecomments

#ALIAS
alias python=python3
alias clang++='clang++ -std=c++11'

#THEME
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

#VI SETTINGS
set -o vi

#SET XDG PATH
export XDG_CONFIG_HOME="$HOME/.config"

#SET ZDOTDIR
export ZDOTDIR="$HOME/.config/zsh"

#KEYBIND

bindkey -s '^n' 'zk edit --interactive\n'


#ASDF CONFIG
. "$(brew --prefix asdf)/libexec/asdf.sh"

#JAVA PATH
export JAVA_HOME=$(asdf where java)  
#CHECKER PATH
export CHECKERFRAMEWORK=${HOME}/eisop/checker-framework
export PATH=$CHECKERFRAMEWORK/checker/bin:${PATH}
#CHECKER COMPILE ALIAS
alias javacheck='$CHECKERFRAMEWORK/checker/bin/javac'
#CHECKER DEBUG ALIAS
alias javabug='java -jar "$CHECKERFRAMEWORK/checker/dist/checker.jar" -J-Xdebug -J-Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=5005 -processor org.checkerframework.checker.nullness.NullnessChecker'
# MISC PATH
export MAGICK_HOME=/opt/homebrew/opt/imagemagick/
export PATH="/opt/homebrew/opt/imagemagick/bin:$PATH"
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"
export PATH="/opt/homebrew/opt/imagemagick@6/bin:$PATH"
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/usr/bin/python3:$PATH
