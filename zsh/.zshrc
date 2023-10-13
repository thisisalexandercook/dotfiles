

#PLUGINS
source ~/.config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh

#THEME
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

#SET XDG PATH
export XDG_CONFIG_HOME="$HOME/.config"

#LAUNCH SKHD

launchctl start com.koekeishiya.skhd.plist

#SETUP Python venv 
pyv() {
	if [ ! -d /env/ ]; then		
	python3 -m venv env
	fi
	source env/bin/activate
	echo venv now active 
}

#Create python alias

alias python=/opt/homebrew/bin/python3

#Restart Yabai & Sketchybar

fix() {
    yabai --restart-service
    brew services restart sketchybar
}

