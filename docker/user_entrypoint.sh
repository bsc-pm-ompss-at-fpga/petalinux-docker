#!/bin/bash

export SHELL="/bin/bash"
export DL_DIR=/yocto/dl
export SSTATE_DIR=/yocto/ss
export HOME=/builder

echo 'export PS1='\''\[\e[0m\][\[\e[34m\]\w\[\e[0m\]] > '\''' >> ~/.bashrc

source /opt/petalinux/settings.sh /opt/petalinux

exec $@
