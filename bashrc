# .bashrc

# User specific aliases and functions

alias rm='rm -i'
#alias cp='cp -i'
alias mv='mv -i'
alias l='ls -lrt'

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# prompt
FMT_BOLD="\[\e[1m\]"
FMT_DIM="\[\e[2m\]"
FMT_RESET="\[\e[0m\]"
FMT_UNBOLD="\[\e[22m\]"
FMT_UNDIM="\[\e[22m\]"
FG_BLACK="\[\e[30m\]"
FG_BLUE="\[\e[34m\]"
FG_LBLUE="\[\e[94m\]"
FG_CYAN="\[\e[36m\]"
FG_LCYAN="\[\e[96m\]"
FG_GREEN="\[\e[32m\]"
FG_LGREEN="\[\e[92m\]"
FG_YELLOW="\[\e[33m\]"
FG_LYELLOW="\[\e[93m\]"
FG_GREY="\[\e[90m\]"
FG_LGREY="\[\e[37m\]"
FG_MAGENTA="\[\e[35m\]"
FG_LMAGENTA="\[\e[95m\]"
FG_RED="\[\e[31m\]"
FG_LRED="\[\e[91m\]"
FG_WHITE="\[\e[97m\]"
BG_BLACK="\[\e[40m\]"
BG_BLUE="\[\e[44m\]"
BG_LBLUE="\[\e[104m\]"
BG_CYAN="\[\e[46m\]"
BG_LCYAN="\[\e[106m\]"
BG_GREEN="\[\e[42m\]"
BG_LGREEN="\[\e[102m\]"
BG_YELLOW="\[\e[43m\]"
BG_LYELLOW="\[\e[103m\]"
BG_GREY="\[\e[100m\]"
BG_LGREY="\[\e[47m\]"
BG_MAGENTA="\[\e[45m\]"
BG_LMAGENTA="\[\e[105m\]"
BG_RED="\[\e[41m\]"
BG_LRED="\[\e[101m\]"
BG_WHITE="\[\e[107m\]"


PS1="\n ${FG_BLUE}╭─" # begin arrow to prompt
PS1+="${FG_GREEN}◀" # begin USERNAME container
PS1+="${BG_GREEN}${FG_WHITE}${FMT_BOLD} ◀▶ " # print OS icon
PS1+="${FG_WHITE}\u" # print username
#PS1+="${FMT_UNBOLD}${FMT_BOLD} ${FG_GREEN}${BG_BLUE}▶ " # end USERNAME container / begin DIRECTORY container
PS1+=" ${FG_GREEN}${BG_BLUE} " # end USERNAME container / begin DIRECTORY container
PS1+="${FG_LGREY}\w " # print directory
PS1+="${FG_BLUE}${BG_CYAN} " # end DIRECTORY container / begin FILES container
PS1+="${FG_BLACK}"
PS1+="♦ \$(find . -mindepth 1 -maxdepth 1 -type d | wc -l) " # print number of folders
PS1+="♦ \$(find . -mindepth 1 -maxdepth 1 -type f | wc -l) " # print number of files
PS1+="♦ \$(find . -mindepth 1 -maxdepth 1 -type l | wc -l) " # print number of symlinks
PS1+="${FMT_RESET}${FG_CYAN}"
PS1+="\$(git branch 2> /dev/null | grep '^*' | colrm 1 2 | xargs -I BRANCH echo -n \"" # check if git branch exists
PS1+="${BG_RED} " # end FILES container / begin BRANCH container
PS1+="${FG_WHITE}◀▶ ${FMT_BOLD}BRANCH " # print current git branch
PS1+="${FMT_RESET}${FMT_BOLD}${FG_RED}\")▶\n " # end last container (either FILES or BRANCH)
PS1+="${FG_BLUE}╰❯ " # end arrow to prompt
PS1+="${FG_CYAN}\\$ " # print prompt
PS1+="${FMT_RESET}"
export PS1
