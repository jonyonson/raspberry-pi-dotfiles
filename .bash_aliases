# ~/.bash_aliases

# easier navigation: .. & ...
alias ..="cd .."
alias ...="cd ../.."

# since I'm always accidentally doing it
alias :x="exit"

# mv, rm, cp
alias mv="mv -v"
alias rm="\rm -v -i"
alias cp="cp -v"


# enable color support of ls and some handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vidir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi 


alias ll='ls -l'
alias lsd='ls -l | grep "^d"' # only directories
alias ll='ls -oh'             # long format (without group id)
alias l.='ls -A'              # show hidden files
alias ll.='ls -Aho'           # show hidden files in long format

# ssh
alias copy_ssh='pbcopy < ~/.ssh/id_rsa.pub'

# git
alias g="git"
alias push="git push"
alias undopush="git push -f origin HEAD^:master" # undo a `git push`

# vim
alias v="vim"
alias rmswap="find $HOME/.vim/swaps -name '*.sw[a-z]' | xargs rm" # remove vim swap files

# npm
alias npm.leaves="npm ls --depth=0 -g"
