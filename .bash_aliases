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

# Other Aliases
alias meta="cd /mnt/c/NetQuarry/Customers/FBO/Database/Metadata"
alias mapx="cd /mnt/c/NetQuarry/Customers/FBO/Source/MapperExts"
alias templates="cd /mnt/c/NetQuarry/Source/WebHost/Templates/FBO"
alias styles="cd /mnt/c/NetQuarry/Source/WebHost/Apps/FBO/Styles"
alias less="cd /mnt/c/NetQuarry/Source/WebHost/Apps/FBO/less"

# Python Aliases

alias virt="source venv/bin/activate"
alias freeze="pip freeze"
alias ph="git push heroku master"
alias po="git push origin master"
alias req="pip install -r requirements.txt"
alias freezer="pip freeze >| requirements.txt"
alias todo="cat ~/development/emerald/to-do-list.txt"
alias run="python manage.py runserver"
alias db="psql emerald"
alias debug="python -m pdb manage.py runserver"

# SASS Aliases
alias ss="sass sass/custom.scss static/emerald/custom.css"
alias sw="sass --watch sass:static/emerald/"
alias css="vim sass/custom.scss"
