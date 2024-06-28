ZSH_THEME="dracula/dracula"

### Export ###
export TERM="xterm-256color"  # proper colors
export ZSH="$HOME/.oh-my-zsh" # omz directory

# add stuff to $PATH
export PATH=$PATH:/Users/itaysharir/.spicetify        # add spicetify to $PATH
export PATH="$HOME/.emacs.d/bin:$PATH"                # Add doom executable to $PATH
export PATH="/opt/homebrew/opt/sphinx-doc/bin:$PATH"  # add sphinx to $PATH

# pacman
export BOOTSTRAP=/opt/pacman
export PATH=$BOOTSTRAP/bin:$PATH

# locale
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

### Aliases ###
# brew
alias bw='brew'
alias bwI='brew install'
alias bwE='brew reinstall'
alias bwR='brew remove'
bwU () {
    echo "Updating homebrew itself:"
    brew update
    echo "_______________________________"
    echo " "
    brew upgrade
    echo "Everything is up-to-date."
}
alias bwO='brew outdated'
alias bwT='brew tap'
alias bwL='brew list'
alias bwLp='brew list | wc -l'
alias bwS='brew services'
alias bwRestart='brew services restart'
alias bwStart='brew services start'
alias bwStop='brew services stop'
bwH () {
    echo "List of brew aliases:"
    echo "_______________________________"
    echo " "
    echo "bw          =      brew"
    echo "bwI         =      brew install"
    echo "bwE         =      brew reinstall"
    echo "bwR         =      brew remove"
    echo "bwU         =      update everything"
    echo "bwO         =      brew outdated"
    echo "bwS         =      brew services"
    echo "bwRestart   =      brew services restart"
    echo "bwStart     =      brew services start"
    echo "bwStop      =      brew services stop"
}

# macports
alias pr='port'
alias prI='sudo port install'
alias prL='port list'
alias prLp='port list | wc -l'
prE () {
    sudo port uninstall $1 && sudo port install $1
}
alias prR='sudo port uninstall'
prU () {
    echo "Updating macports itself:"
    sudo port selfupdate
    echo "Macports is up-to-date."
    echo "_______________________________"
    echo " "
    echo "Upadating packages..."
    sudo port upgrade outdated
    echo "Everything is up-to-date."
}
alias prO='port outdated'
prH () {
    echo "List of port aliases:"
    echo "_______________________________"
    echo " "
    echo "pr          =      port"
    echo "prI         =      sudo port install"
    echo "prE         =      sudo port uninstall <package> && sudo port install <package>"
    echo "prR         =      sudo port uninstall"
    echo "prU         =      update everything"
    echo "prO         =      port outdated"
}

# shorten commands
alias cle='clear'
alias ne='neofetch'
alias v="nvim"

# shpotify
alias play='spotify play'                         # play a song on spotify
alias pause='spotify pause'                       # pause a song on spotify
alias liked='spotify play list Liked Songs'       # play song from liked songs
alias next='spotify next'                         # skip a track
alias prev='spotify prev'                         # go back to the previous track
alias jumpto='spotify pos'                        # jump to a spacific moment in the song (usage: jumpto <time>)
alias nowplaying='spotify status'                 # see details about currently playing song
alias shuffle='spotify toggle shuffle'            # toggle shuffle

# git
alias addup='git add -u'
alias addall='git add .'
alias add='git add'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias stat='git status'  # 'status' is protected name so using 'stat' instead
alias tag='git tag'

# source .zshrc
alias src='source ~/.zshrc' # apply changes made in .zshrc without closing zsh

# rickroll
alias rr='open https://www.youtube.com/watch?v=dQw4w9WgXcQ'

# emacs and doom emacs
alias em="emacsclient -t"                         # launch an emacs client quickly in the terminal
# alias emacs="emacsclient -c"                      # launch an emacs client quickly
alias doomsync="~/.emacs.d/bin/doom sync"         # sync doom emacs plugins
alias doomdoctor="~/.emacs.d/bin/doom doctor"     # check doom emacs for errors
alias doomupgrade="~/.emacs.d/bin/doom upgrade"   # upgrade doom emacs
alias doompurge="~/.emacs.d/bin/doom purge"       # purge plugins in doom emacs

# shorten cd ../../../
alias .1='cd ..'              
alias .2='cd ../..'           
alias .3='cd ../../..'        
alias .4='cd ../../../..'     
alias .5='cd ../../../../..'  

# when creating a directory, create all parent directories
alias mkdir='mkdir -pv'

# confrimations
alias mv='mv -i' 
alias cp='cp -i' 
alias ln='ln -i' 

### function to easily extract files ###
# usage: ex <file>
ex () {
    if [ -f "$1" ] ; then
     case $file in
       *.tar.bz2)   tar xjf $1   ;;
       *.tar.gz)    tar xzf $1   ;;
       *.bz2)       bunzip2 $1   ;;
       *.rar)       unrar x $1   ;;
       *.gz)        gunzip $1    ;;
       *.tar)       tar xf $1    ;;
       *.tbz2)      tar xjf $1   ;;
       *.tgz)       tar xzf $1   ;;
       *.zip)       unzip $1     ;;
       *.Z)         uncompress $1;;
       *.7z)        7z x $1      ;;
       *.deb)       ar x $1      ;;
       *.tar.xz)    tar xf $1    ;;
       *.tar.zst)   unzstd $1    ;;
       *)           echo "'$1' cannot be extracted via ex()" ;;
     esac
   else
     echo "'$1' is not a valid file"
   fi
}

### startup ###
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"
