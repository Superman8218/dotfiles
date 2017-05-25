# 2.1) Safety
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
set -o noclobber

# 2.2) Listing, directories, and motion
alias ll="ls -alrtF --color"
alias la="ls -A"
alias l="ls -CF"
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias m='less'
alias ..='cd ..'
alias ...='cd ..;cd ..'
alias md='mkdir'
alias cl='clear'
alias du='du -ch --max-depth=1'
alias treeacl='tree -A -C -L 2'

# 2.3) Text and editor commands
alias em='emacs -nw'     # No X11 windows
alias eqq='emacs -nw -Q' # No config and no X11
export EDITOR='emacs -nw'
export VISUAL='emacs -nw'

# 2.4) grep options
export GREP_COLOR='1;31' # green for matches
alias grep="grep -n --color=auto"

# 2.5) sort options
# Ensures cross-platform sorting behavior of GNU sort.
# http://www.gnu.org/software/coreutils/faq/coreutils-faq.html#Sort-does-not-sort-in-normal-order_0021
unset LANG
export LC_ALL=POSIX

# Standard Directories
alias home="cd ~"

# 2.8) Django controls
alias pym="python manage.py"
alias shell="python manage.py shell"

# Heroku
export PATH="/usr/local/heroku/bin:$PATH"

# Bidspeed Aliases

alias less="cd /mnt/c/NetQuarry/Source/WebHost/Apps/FBO/less"
alias mapx="cd /mnt/c/NetQuarry/Customers/FBO/Source/MapperExts"
alias meta="cd /mnt/c/NetQuarry/Customers/FBO/Database/Metadata"
alias styles="cd /mnt/c/NetQuarry/Source/WebHost/Apps/FBO/Styles"
alias templates="cd /mnt/c/NetQuarry/Source/WebHost/Templates/FBO"
alias download="cd /mnt/c/Users/Zac\ Yauney/Downloads"
alias drive="cd /mnt/c/Users/Zac\ Yauney/Google\ Drive/"

# Python Aliases

alias db="psql emerald"
alias debug="python -m pdb manage.py runserver"
alias freeze="pip freeze"
alias freezer="pip freeze >| requirements.txt"
alias fbi="python manage.py fbo_import"
alias ph="git push heroku master"
alias po="git push origin master"
alias req="pip install -r requirements.txt"
alias run="python manage.py runserver"
alias sami="python manage.py sam_import"
alias tables="cd ~/envs/emerald/lib/python2.7/site-packages/django_tables2"
alias todo="cat ~/development/emerald/to-do-list.txt"

# Emerald Aliases
alias clrlog="rm -rf ~/development/emerald/logs/*"
alias ca="cat ~/development/emerald/logs/errors.log"

# SASS Aliases

alias css="vim ~/development/emerald/sass/custom.scss"
alias ss="sass sass/custom.scss static/emerald/css/custom.css"
alias sw="sass --watch sass:static/emerald/css/"

# Moving Around

alias dotfiles="cd ~/dotfiles"
alias emerald="cd ~/development/emerald"
alias envs="cd $WORKON_HOME"
alias setup="cd ~/setup"

# Git Aliases

alias gs="git status"
alias ga="git add *"
alias gc="git commit -m"
alias gl="git log --abbrev-commit --pretty=oneline"

# Virtual Environment Aliases

alias da="deactivate"
alias virt="workon emerald"

# Vim shortcuts

alias v="vim"
alias valias="vim ~/.bash_aliases"
alias vbrc="vim ~/.bashrc"
alias vzrc="vim ~/.zshrc"
alias vde="vim ~/envs/emerald/bin/predeactivate"
alias vpt="vim ~/envs/emerald/bin/postactivate"
alias vxb="vim ~/dotfiles/.Xresources"

# Misc Aliases
alias sbrc="source ~/.bashrc"
alias zbrc="source ~/.zshrc"
alias xb="xrdb ~/.Xresources"

# OMZ Aliases
alias omz="cd ~/.oh-my-zsh"
