#!/bin/bash

## Author : shreynashu shubham
## Github : arcadesArena
## Free - for (all (uses and modifications)) - except you must keep this notice intact.
declare -r version='v0.1.0'

#styles
normal='0' ; bold='1' ; italics='3' ; underline='4' ; blink='5' ; reverse='7' ; hidden="8" ; strikethrought='9'
#base colors
colors=("black" "red" "green" "yellow" "blue" "purple" "cyan" "white")
base_color=('30' '31' '32' '33' '34' '35' '36' '37')
#background
bg_color=('40' '41' '42' '43' '44' '45' '46' '47')
#high intensity
bright_color=('90' '91' '92' '93' '94' '95' '96' '97')
#high intensity background
bright_bg_color=('100' '101' '102' '103' '104' '105' '106' '107')

echo ${base_color[3]}

function get_version(){
    echo -e "version : ${version}"
}
function get_help(){
    echo -e "NAME"
    echo -e "\tpaintText - to print colored text in mainly bash terminal"
    echo -e "SYNOPSIS"
    echo -e "\tpaintText [OPTIONS]"

}
function list_colors(){
    echo -e ""
}

while getopts "hvs:ic:l" opt; do
    case ${opt} in
        h)get_help;;
        v)get_version;;
        l)list_colors;;
        s);;
        i);;
        c);;
        *);;
    esac
done




# 
# black=90
# red
# green
# yellow
# blue
# purple
# cyan
# white=97
# #high intensity bg
# 100 to 107