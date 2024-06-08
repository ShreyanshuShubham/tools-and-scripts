# srcs:
#   https://ss64.com/bash/syntax-prompt.html
#   https://tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html
#   

black='0;30'
dark_gray='1;30'
blue='0;34'
bold_blue='1;34'
green='0;32'
bold_green='1;32'
cyan='0;36'
bold_cyan='1;36'
red='0;31'     
bold_red='1;31'
purple='0;35'     
bold_purple='1;35'
brown='0;33'
yellow='0;33'
bold_yellow='1;33'
bold_gray='0;37'     
white='1;37'

function get_color(){
    local prefix='\033['
    local postfix='m'
    local color_code=$1
    local text=$2
    local reset='\033[0m'
    printf "${prefix}${color_code}${postfix}${text}${reset}"
}

printf "`get_color ${dark_gray} hello` world\n"
printf "`get_color ${red} hello` world\n"
printf "`get_color ${yellow} hello` world\n"
printf "`get_color ${bold_yellow} hello` world\n"
printf "`get_color ${bold_red} hello` world\n"
