# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt inc_append_history appendhistory autocd extendedglob nomatch
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

#autoload -Uz compinit
#compinit
# End of lines added by compinstall

autoload edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line

hash -d notes=~/ws/OrgNotes
hash -d gows=/ws/go/src/github.com/phye
hash -d ebooks=~/Documents/OneDrive/Ebooks

[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
[ -f ~/.shrc.phye.sh ] && source ~/.shrc.phye.sh
