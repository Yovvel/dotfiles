# Run at startup
python ~/.scripts/quotes.py
#sudo mount -t drvfs Y: /mnt/y

# basic bash aliases
alias h="cd ~"
alias e="exit"
alias s="sudo $1"
alias b="cd .."
alias c="clear"
alias t="touch $1"
alias md="mkdir $1"
alias rd="rmdir $1"
alias nn="nano $1"

# Easyer navigation: .., ...,
alias ..="cd .."
alias ...="cd ../.."

# git commands
alias g="git $1"
alias gs="git status"
alias gl="git log"
alias gi="git init $1"
alias gr="git remote $1"
alias gf="git fetch $1"
alias gm="git merge $1"
alias ga="git add $1"
alias gaa="git add ."
alias gcm="git commit -m $1"
alias gp="git push $1 $2"

# common folders
alias doc="cd ~/Documents"
alias dev="cd ~/Documents/development/"
alias whome="cd /mnt/c/Users/joffr"

# Update system
alias update="sudo apt-get update && sudo apt-get upgrade -y"

# run scripts
alias mvt="sudo python ~/.scripts/movetorrent.py"
alias gsa="~/.scripts/./gitAllStatus.sh ~/Documents/development"

# ------------------------------------------------------------------------- #
#   Custom commands                                                         #
# ------------------------------------------------------------------------- #

# show the weather
function weer(){
    curl wttr.in/$1
}

# usage: timer seconds
function timer() { 
  total=$1 
  for ((i=total; i>0; i--)); do sleep 1; printf "Time remaining $i secs \r"; done 
  echo -e "\a" 
}

# extract without knowing which archive has been used
function extract () { 
    if [ -f $1 ] ; then 
    case $1 in 
        *.tar.bz2)   tar xvjf $1    ;; 
        *.tar.gz)    tar xvzf $1    ;; 
        *.tar.xz)    tar Jxvf $1    ;; 
        *.bz2)       bunzip2 $1     ;; 
        *.rar)       rar x $1       ;; 
        *.gz)        gunzip $1      ;; 
        *.tar)       tar xvf $1     ;; 
        *.tbz2)      tar xvjf $1    ;; 
        *.tgz)       tar xvzf $1    ;; 
        *.zip)       unzip -d `echo $1 | sed 's/\(.*\)\.zip/\1/'` $1;; 
        *.Z)         uncompress $1  ;; 
        *.7z)        7z x $1        ;; 
        *)           echo "don't know how to extract '$1'" ;; 
    esac 
    else 
    echo "'$1' is not a valid file!" 
    fi 
} 

