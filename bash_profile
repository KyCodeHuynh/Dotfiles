# Homebrew and LaTeX
export PATH=/usr/local/bin:$PATH 
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/texlive/2015/bin/x86_64-darwin:$PATH 

export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

export MONO_GAC_PREFIX="/usr/local"
export PGDATA="/usr/local/var/postgres"

export HOMEBREW_EDITOR=vim

export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export MANPATH="/usr/local/opt/erlang/lib/erlang/man:$MANPATH"
export HOMEBREW_NO_INSECURE_REDIRECT=true;

alias objdump='gobjdump'
alias strings='gstrings'
alias tar='/usr/local/opt/gnu-tar/libexec/gnubin/tar'
alias sha1="openssl sha1"
alias sha256="sha256sum"
alias swift="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift"
alias unzip="/usr/local/Cellar/unzip/6.0/bin/unzip"
alias qemu="qemu-system-i386"
alias hc="/usr/local/bin/hashcat"

# OPAM configuration
. /Users/Ky-Cuong/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'
fi
