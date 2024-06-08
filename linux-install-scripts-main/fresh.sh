#!/usr/bin/bash
# username:	arcadesArena
# author:	shreyanshu shubham
# version:	0.0.1a

# work_dir=~/.work_temp
work_dir=.

function preparation(){
    sudo apt install git > /dev/null
    mkdir $work_dir
    cd $work_dir
    git clone  https://github.com/arcadesArena/linux-install-scripts --depth=1
    cd "${work_dir}/linux-install-scripts"
    bash fresh.sh
}

function main(){
    echo "hello"
}


echo "This is a script is made for bash on system using apt packet manager"
read -p "If this system meets the above requirements press Y to continue: " _compatible

if [[ $_compatible == 'Y' ]] || [[ $_compatible == 'y' ]]
then
    main
else
    echo "Terminating..."
fi
