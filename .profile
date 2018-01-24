# ~/.profile is not read by bash if ~/.bash_profile or ~/.bash_login exists

# the default umask is set in /etc/profile; for setting the umask
# for setting the umask for ssh logins, install and configure libpam-umask 
#umask 022

# if running bash, include .bashrc if it exists
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi


# load our dotfiles
if [ -r "$HOME/.bash_aliases" ]; then
    . "$HOME/.bash_aliases"
fi

# include ~/bin in PATH if it exists
#if [ -d "$HOME/bin" ]; then
#    PATH="$HOME/bin:$PATH"
#fi


[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"


# load  nvm 
[ -s "$HOME/.nvm" ] && export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"


