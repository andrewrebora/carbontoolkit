#!/bin/bash
# Script to uninstall carbontoolkit
# Created by Andrea Rebora (@AndreaRebora01)

echo ""
echo "                        _                   __                  __         __  __    "
echo "     _____   __  ______| |__    ____   ____/  |__  ____   ____ |  |  __  _|__|/  |_  "
echo "   _/ ___/  /__\ \_  __ \ __ \ /    \ /    \   __\/    \ /    \|  | |  |/ /  \   __\ "
echo "   \  \___ / __ \ |  | \/ \_\ (  <>  )   |  \  | (  <>  |  <>  )  |_|    <|  ||  |   "
echo "    \_____/_/  \_\|__|  |_____/\____/|___|__/__|  \____/ \____/|____/__|__\__||__|   "
echo "                                                                                     "
echo "		Information Gathering and Vulnerability Assessment"
echo "		Version 1.0"
echo "		Created by Andrea Rebora (AndreaRebora01)"
echo ""

INSTALL_DIR=/usr/share/carbontoolkit

tput setaf 1; echo "[You are about to uninstall carbontoolkit. Do you want to continue? (Press [Enter] to continue, [Ctrl+c] to cancel)]"
read answer 

rm -rf /usr/share/carbontoolkit/
rm -f /usr/bin/carbontoolkit

echo""
echo "[You have successfully uninstalled carbontoolkit.]"
tput sgr0;
echo ""