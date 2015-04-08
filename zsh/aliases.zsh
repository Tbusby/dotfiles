# Aliases 

# -------------------------------------------------------------------
# use nocorrect alias to prevent auto correct from "fixing" these
# -------------------------------------------------------------------
#alias foobar='nocorrect foobar'
alias g8='nocorrect g8'
alias cp='nocorrect cp'
alias mv='nocorrect mv'
alias mkdir='nocorrect mkdir'
alias git='nocorrect git'




# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cls='clear'
alias wq='echo "Hodor....."'
alias ..='cd ..'
alias ...='cd ../..'

if [[ -x `which nc` ]]; then
  alias nyan='nc -v nyancat.dakko.us 23' # nyan cat
fi

alias pupapp='sudo -E puppet apply /etc/puppet/manifests/site.pp --modulepath=/etc/puppet/modules --verbose'

# mysql auto log in definitions
alias smysql='sudo mysql --defaults-file=/etc/mysql/debian.cnf'

# -------------------------------------------------------------------
# Mac only
# -------------------------------------------------------------------
if [[ $IS_MAC -eq 1 ]]; then
    alias oo='open .' # open current directory in OS X Finder
    alias cello='say -v cellos "di di di di di di di di di di di di di di di di di di di di di di di di di di"'
    alias p='pwd | tr -d "\n" | pbcopy' # Copies Path to clipboard
    alias flushdns'sudo discoveryutil mdnsflushcache;sudo discoveryutil udnsflushcaches;echo flushed'  # Flush the DNS cache (Yosemite)
fi



