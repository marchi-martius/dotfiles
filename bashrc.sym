if [ -f $(brew --prefix)/etc/bash_completion ]
then
    source $(brew --prefix)/etc/bash_completion
fi
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
complete -C aws_completer aws

#BASE16_SHELL="$HOME/.config/base16-ocean.dark.sh"
#[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

export LANG='ru_RU.UTF-8'

# Reset
Color_Off='\[\e[0m\]'       # Text Reset

# Plain Colors
Black='\[\e[0;30m\]'        # Black
Red='\[\e[0;31m\]'          # Red
Green='\[\e[0;32m\]'        # Green
Yellow='\[\e[0;33m\]'       # Yellow
Blue='\[\e[0;34m\]'         # Blue
Purple='\[\e[0;35m\]'       # Purple
Cyan='\[\e[0;36m\]'         # Cyan
White='\[\e[0;37m\]'        # White

# Bold
BBlack='\[\e[1;30m\]'       # Black
BRed='\[\e[1;31m\]'         # Red
BGreen='\[\e[1;32m\]'       # Green
BYellow='\[\e[1;33m\]'      # Yellow
BBlue='\[\e[1;34m\]'        # Blue
BPurple='\[\e[1;35m\]'      # Purple
BCyan='\[\e[1;36m\]'        # Cyan
BWhite='\[\e[1;37m\]'       # White

function __ruby_version {
    version="$(ruby -v)"
    version="${version#* }"
    version="${version%% *}"
    echo "$version"
}
PS1="${BGreen}\u@\h"
PS1+="${BBlue}:\W "
PS1+="${Yellow}"
PS1+='$(__git_ps1 "(%s)")'
PS1+="${Color_Off}\$ "

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
