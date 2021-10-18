# prompt
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        color_prompt=yes
    else
	      color_prompt=
    fi
fi

parse_git_branch() {
    BRANCHES=$(git branch -qv 2> /dev/null)

    if [[ $BRANCHES == *"* (HEAD"* ]]; then
        echo "$BRANCHES" | sed -e '/^[^*]/d' -e 's/\* [^\)]*) \([^ ]*\) .*/\1/'
    else
        echo "$BRANCHES" | sed -e '/^[^*]/d' -e 's/\* \([^ ]*\) .*/\1/'
    fi
}

parse_short_path () {
    echo $(echo $(dirname $(echo "$1" | sed "s;$HOME;~;"))/ | sed -e "s;\(/\.\?.\)[^/]*;\1;g" -e "s;\./;;")$2
}

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\e[1;30m\]$(now)\[\e[1;37m\]|\[\e[1;32m\]\u@\h\[\e[1;37m\]|\[\e[1;34m\]$(parse_short_path \w \W)\[\e[1;31m\]$(__git_ps1)\[\e[0m\]\n\[\e[1;35m\]►►\[\e[0m\] '
else
    PS1='${debian_chroot:+($debian_chroot)}$(now)|\u@\h|$(parse_short_path \w \W)$(__git_ps1)\n\►► '
fi

unset color_prompt force_color_prompt
