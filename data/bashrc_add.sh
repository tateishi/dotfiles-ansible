SCRIPT_DIR=~/.dotfiles/bash

if [ -d ${SCRIPT_DIR} ]; then
    for script in $( find ${SCRIPT_DIR} -name "[0-9][0-9]-*[^~]" | sort )
    do
        [ -f ${script} ] && source ${script}
    done
fi
