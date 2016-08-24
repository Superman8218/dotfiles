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
alias meta="cd C:/NetQuarry/Customers/FBO/Database/Metadata"
alias mapx="cd C:/NetQuarry/Customers/FBO/Source/MapperExts"
alias templates="cd C:/NetQuarry/Source/WebHost/Templates/FBO"
alias styles="cd C:/NetQuarry/Source/WebHost/Apps/FBO/Styles"
alias less="cd C:/NetQuarry/Source/WebHost/Apps/FBO/less"

# Java Aliases
alias c="mvn compile"
alias p="mvn package"
alias r="~/development/Java/run_with_arguments.sh"
alias h="cd ~/development/web-tagger"
alias s="cd ~/development/web-tagger/src/main/java/com/GumGum/app"
