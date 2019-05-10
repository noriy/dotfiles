#
# in .bashrc
# if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
# fi
#
alias   j='jobs -l'
alias   h='history 15'
alias   H='history | less'
alias   z=suspend
alias   d='dirs -v'
alias   pd=pushd
alias   pp=popd
alias   d1='pushd +1'
alias   d2='pushd +2'
alias   d3='pushd +3'
alias   d4='pushd +4'
alias   d5='pushd +5'
alias   d6='pushd +6'
alias   d7='pushd +7'
alias   d8='pushd +8'
alias   d9='pushd +9'

HISTSIZE=5000
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
PROMPT_DIRTRIM=2
