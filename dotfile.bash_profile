# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022
# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
    
    for script in $HOME/.bash_profile.d/*.bash; do
        source $script
    done

fi

if [[ -s "$HOME/.rvm/scripts/rvm" ]];then
    source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
fi
