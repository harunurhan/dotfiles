# ll Short-hand
alias ll="ls -l"

# unix time in miliseconds
alias now="date +%s%N | cut -b1-13"

# enable colorful ls output
export CLICOLOR=1
export LSCOLORS=ExFxExDxBxegedabagacad
export PS1="\h:\[\e[33m\]\W\[\e[m\] \[\e[32m\]\u\[\e[m\]\\$ "

#name current tab name
tabname () {
	echo -ne "\033]0;$1\007"
}

# MySQL
export PATH=$PATH:/usr/local/mysql/bin
mysqlserver () {
	sudo /usr/local/mysql/support-files/mysql.server $1
}

# PostgreSQL
pgsqlserver () {
	pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log $1
}

#Fix presto's mvn clean install error while building presto-docs(sphinx)
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias git=hub

# Node Version Manager
export NVM_DIR="/Users/harunurhan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

if [ -f ~/.git-completion.bash ]; then
	    . ~/.git-completion.bash
fi

# Fix vim/YouCompleteMe python crash
export DYLD_FORCE_FLAT_NAMESPACE=1
