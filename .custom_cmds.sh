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

# ------------------------------------------------------------------------- #
#   Custom commands                                                         #
# ------------------------------------------------------------------------- #

function mvt(){
    files="/mnt/c/Users/joffr/Downloads/*.torrent"
    numbers=0
    for f in $files
    do
        echo "$f found"
        let "numbers+=1"
    done
    echo "found $numbers new books"
}