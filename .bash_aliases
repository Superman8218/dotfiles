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

# 2.8) Django controls
alias pym="python manage.py"

# Heroku
export PATH="/usr/local/heroku/bin:$PATH"

# Bidspeed Aliases

alias less="cd /mnt/c/NetQuarry/Source/WebHost/Apps/FBO/less"
alias mapx="cd /mnt/c/NetQuarry/Customers/FBO/Source/MapperExts"
alias meta="cd /mnt/c/NetQuarry/Customers/FBO/Database/Metadata"
alias styles="cd /mnt/c/NetQuarry/Source/WebHost/Apps/FBO/Styles"
alias templates="cd /mnt/c/NetQuarry/Source/WebHost/Templates/FBO"

# Python Aliases

alias db="psql emerald"
alias debug="python -m pdb manage.py runserver"
alias freeze="pip freeze"
alias freezer="pip freeze >| requirements.txt"
alias fbi="./manage.py FboImport"
alias ph="git push heroku master"
alias po="git push origin master"
alias req="pip install -r requirements.txt"
alias run="python manage.py runserver"
alias tb="vim ~/development/emerald/venv/lib/python2.7/site-packages/django_tables2/templates/django_tables2/table.html"
alias todo="cat ~/development/emerald/to-do-list.txt"

# SASS Aliases

alias css="vim sass/custom.scss"
alias ss="sass sass/custom.scss static/emerald/custom.css"
alias sw="sass --watch sass:static/emerald/"

# Moving Around

alias dotfiles="cd ~/dotfiles"
alias emerald="cd ~/development/emerald"
alias envs="cd $WORKON_HOME"
alias setup="cd ~/setup"

# Git Aliases

alias gs="git status"
alias ga="git add *"
alias gc="git commit -m"

# Virtual Environment Aliases

alias da="deactivate"
alias virt="workon emerald"

# Vim shortcuts

alias valias="vim ~/.bash_aliases"
alias vbrc="vim ~/.bashrc"
alias vde="vim ~/envs/emerald/bin/predeactivate"
alias vpt="vim ~/envs/emerald/bin/postactivate"

# Misc Aliases

alias sbrc="source ~/.bashrc"
