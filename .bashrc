# .bashrc file
# By Balaji S. Srinivasan (balajis@stanford.edu)
# -----------------------------------
# -- 1.1) Set up umask permissions --
# -----------------------------------
#  The following incantation allows easy group modification of files.
#  See here: http://en.wikipedia.org/wiki/Umask
#
#     umask 002 allows only you to write (but the group to read) any new
#     files that you create.
#
#     umask 022 allows both you and the group to write to any new files
#     which you make.
#
#  In general we want umask 022 on the server and umask 002 on local
#  machines.
#
#  The command 'id' gives the info we need to distinguish these cases.
#
#     $ id -gn  #gives group name
#     $ id -un  #gives user name
#     $ id -u   #gives user ID
#
#  So: if the group name is the same as the username OR the user id is not
#  greater than 99 (i.e. not root or a privileged user), then we are on a
#  local machine (check for yourself), so we set umask 002.
#
#  Conversely, if the default group name is *different* from the username
#  AND the user id is greater than 99, we're on the server, and set umask
#  022 for easy collaborative editing.
if [ "`id -gn`" == "`id -un`" -a `id -u` -gt 99 ]; then
	umask 002
else
	umask 022
fi

# ---------------------------------------------------------
# -- 1.2) Set up bash prompt and ~/.bash_eternal_history --
# ---------------------------------------------------------
#  Set various bash parameters based on whether the shell is 'interactive'
#  or not.  An interactive shell is one you type commands into, a
#  non-interactive one is the bash environment used in scripts.
if [ "$PS1" ]; then

    if [ -x /usr/bin/tput ]; then
      if [ "x`tput kbs`" != "x" ]; then # We can't do this with "dumb" terminal
        stty erase `tput kbs`
      elif [ -x /usr/bin/wc ]; then
        if [ "`tput kbs|wc -c `" -gt 0 ]; then # We can't do this with "dumb" terminal
          stty erase `tput kbs`
        fi
      fi
    fi
    case $TERM in
	xterm*)
		if [ -e /etc/sysconfig/bash-prompt-xterm ]; then
			PROMPT_COMMAND=/etc/sysconfig/bash-prompt-xterm
		else
	    	PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'
		fi
		;;
	screen)
		if [ -e /etc/sysconfig/bash-prompt-screen ]; then
			PROMPT_COMMAND=/etc/sysconfig/bash-prompt-screen
		else
		PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\033\\"'
		fi
		;;
	*)
		[ -e /etc/sysconfig/bash-prompt-default ] && PROMPT_COMMAND=/etc/sysconfig/bash-prompt-default

	    ;;
    esac

fi

# Append to history
# See: http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html
shopt -s histappend





## -----------------------
## -- 2) Set up aliases --
## -----------------------

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

## ------------------------------
## -- 3) User-customized code  --
## ------------------------------
stty erase '^?'
set shell=/usr/local/bin/bash

source ~/.envars
## ------------------------------
## -- Terminal Appearance --
## ------------------------------

## Colorize man pages

man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

## The command prompt color

PS1="\[\033[1;33m\][\u@\h:\w]$\[\033[0m\]"

## Solarized Settings
#export TERM="screen-256color"
#alias tmux="tmux -2"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

## Go to development environment by default
cd ~/development/emerald
if ! { [ -n "$TMUX" ]; } then
    tmux
fi

if [ -f ~/.local_settings ]; then
    . ~/.local_settings
fi

# virtualenvwrapper

export WORKON_HOME=~/envs
source $VIRTUALENVWRAPPERHOME

# XResources
xrdb ~/.Xresources
