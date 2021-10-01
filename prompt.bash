# prompt
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

parse_git_branch() {
    BRANCHES=$(git branch -qv 2> /dev/null)
    
    if [[ $BRANCHES == *"* (HEAD"* ]]; then
        echo "$BRANCHES" | sed -e '/^[^*]/d' -e 's/\* \([^\s]*\) \([^\s]*\) .*/(\2)/'
    else
        git branch -q 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
    fi
}

parse_short_path () {
    echo $(echo $(dirname $(echo "$1" | sed "s;$HOME;~;"))/ | sed -e "s;\(/\.\?.\)[^/]*;\1;g" -e "s;\./;;")$2
}

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}$(now)|\[\033[01;32m\]\u@\h\[\033[00m\]|\[\033[01;34m\]$(parse_short_path \w \W)\[\033[00m\]|\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\n\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}$(now)|\u@\h|$(parse_short_path \w \W)|$(parse_git_branch)\n\$ '
fi

unset color_prompt force_color_prompt