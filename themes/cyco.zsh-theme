# reference colors
GREEN="%{$fg_bold[green]%}"
RED="%{$fg_bold[red]%}"
CYAN="%{$fg_bold[cyan]%}"
YELLOW="%{$fg_bold[yellow]%}"
BLUE="%{$fg_bold[blue]%}"
MAGENTA="%{$fg_bold[magenta]%}"
WHITE="%{$fg_bold[white]%}"

COLOR_ARRAY=($GREEN $RED $CYAN $YELLOW $BLUE $MAGENTA $WHITE)

# color reset
RESET_COLOR="%{$reset_color%}"

BOLD="%{$terminfo[bold]%}"

# which color should be applied?
USERNAME_NORMAL_COLOR=
USERNAME_ROOT_COLOR=$RED
HOSTNAME_NORMAL_COLOR=
# uncomment next line if you want auto-generated hostname color
#for i in $HOST; HOSTNAME_NORMAL_COLOR=$COLOR_ARRAY[$[((#i))%7+1]]
HOSTNAME_ROOT_COLOR=$RED
HOSTNAME_COLOR=%(!.$HOSTNAME_ROOT_COLOR.$HOSTNAME_NORMAL_COLOR)
CURRENT_DIR_COLOR=

# zsh commands
USERNAME_COMMAND="%n"
HOSTNAME_COMMAND="%m"
CURRENT_DIR="%~"

# output: colors + commands
USERNAME_OUTPUT="%(!..$USERNAME_NORMAL_COLOR$USERNAME_COMMAND$RESET_COLOR@)"
HOSTNAME_OUTPUT="$HOSTNAME_COLOR$HOSTNAME_COMMAND$RESET_COLOR"
CURRENT_DIR_OUTPUT="$CURRENT_DIR_COLOR$CURRENT_DIR"
LAST_COMMAND_OUTPUT="%(?.%(!.$RED.).$BOLD)"

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=")$RED*"
ZSH_THEME_GIT_PROMPT_CLEAN=")"

# wrap all together
PROMPT='$USERNAME_OUTPUT$HOSTNAME_OUTPUT:$CURRENT_DIR_OUTPUT$LAST_COMMAND_OUTPUT%#$RESET_COLOR '
RPROMPT='%1(j.fg: [%j].) $GREEN$(git_prompt_info)$RESET_COLOR [%T]'
