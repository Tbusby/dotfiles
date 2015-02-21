# Aliases 

# -------------------------------------------------------------------
# use nocorrect alias to prevent auto correct from "fixing" these
# -------------------------------------------------------------------
#alias foobar='nocorrect foobar'
alias g8='nocorrect g8'
alias cp='nocorrect cp '
alias mv='nocorrect mv '
alias mkdir='nocorrect mkdir '

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cls='clear'
alias wq='echo "Hodor....."'

alias pupapp='sudo -E puppet apply /etc/puppet/manifests/site.pp --modulepath=/etc/puppet/modules --verbose'

# mysql auto log in definitions
alias smysql='sudo mysql --defaults-file=/etc/mysql/debian.cnf'

# -------------------------------------------------------------------
# Mac only
# -------------------------------------------------------------------
if [[ $IS_MAC -eq 1 ]]; then
    alias oo='open .' # open current directory in OS X Finder
    alias cello='say -v cellos "di di di di di di di di di di di di di di di di di di di di di di di di di di"'
    alias p='pwd | tr -d "\n" | pbcopy' # Copy's Path to clipboard/
fi



