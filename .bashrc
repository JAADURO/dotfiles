#
# ~/.bashrc
#
echo "  (\__/)"
echo "  (o^.^)"
echo "WELCOME IN YOUR SHELL ${USER}"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1, ne pas afficher le nom d'utilisateur quand c'est mon pseudo
if [ "$USER" = "test" ]; then
    PS1='\u@\h:\w\$ '
else
    PS1='\w\$ '
fi

# Charger alias
if [ -f ~/.dotfiles/.aliases ]; then
    source ~/.dotfiles/.aliases
fi

# Charger fonctions
if [ -f ~/.dotfiles/.functions ]; then
    source ~/.dotfiles/.functions
fi

# Variable PATH
export PATH="/usr/bin:/bin:$PATH"

# Bash-it
if [ -f ~/.bash_it/bash_it.sh ]; then
    source ~/.bash_it/bash_it.sh
fi