alias c=~/Code
alias dotfiles=~/.dotfiles
alias dot=~/.dotfiles/bin/dot
alias x=exit
alias timestamp='gawk "{now=strftime(\"%F %T \"); print now \$0; fflush(); }"'
# add a poor facsimile for Linux's `free` if we're on Mac OS
if ! type free > /dev/null 2>&1 && [[ "$(uname -s)" == 'Darwin' ]]
then
  alias free="top -s 0 -l 1 -pid 0 -stats pid | grep '^PhysMem: ' | cut -d : -f 2- | tr ',' '\n'"
fi
