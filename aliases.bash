# ls
alias ls='ls --color=auto'
alias ll='ls -alh'

# cd
alias .1='cd ..'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'

# grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# colordiff
alias diff='colordiff'

# date
alias now='date +"%F %T"'

# vim
alias vi=vim

# ping
alias ping='ping -c 5'
alias fastping='ping -c 100 -s.2'

# safe net
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# apt-get
alias apt-get="sudo apt-get"

# reboot / halt / poweroff
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

# wget
alias wget='wget -c'

# df
alias df='df -H'

# du
alias du='du -ch'

# wakeonlan
# alias wakeup='/usr/bin/wakeonlan ??:??:??:??:??:??'
