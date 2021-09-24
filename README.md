# bash-sources

## Purpose
Used for .bashrc, providing aliases and other configuration.

## Sources for this repo

* [nixCraft/aliases][1]
* [git/completion][2]

## How to use
Update your .bashrc or .bash_profile with the following snippet.

```bash
DIR=~/.bash-sources

for i in $DIR/*.bash; do
    echo "Loading $i ..."
    source $i
done
```

<!-- LINKS -->
[1]: https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html
[2]: https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
