#!/usr/bin/env bash
##################################################################################################
# Author: Eliezer Rabadon                                                                        # 
# Description: Auto setup bash script to setup required programs for ICP.Hub PH Code Camp.       #       
##################################################################################################
echo -e "\n
██╗ ██████╗██████╗ ██╗  ██╗██╗   ██╗██████╗ ██████╗ ██╗  ██╗
██║██╔════╝██╔══██╗██║  ██║██║   ██║██╔══██╗██╔══██╗██║  ██║
██║██║     ██████╔╝███████║██║   ██║██████╔╝██████╔╝███████║
██║██║     ██╔═══╝ ██╔══██║██║   ██║██╔══██╗██╔═══╝ ██╔══██║
██║╚██████╗██║██╗  ██║  ██║╚██████╔╝██████╔╝██║     ██║  ██║
╚═╝ ╚═════╝╚═╝╚═╝  ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝  ╚═╝
┌─┐┬ ┬┌┬┐┌─┐  ┬┌┐┌┌─┐┌┬┐┌─┐┬  ┬  
├─┤│ │ │ │ │  ││││└─┐ │ ├─┤│  │  
┴ ┴└─┘ ┴ └─┘  ┴┘└┘└─┘ ┴ ┴ ┴┴─┘┴─┘\n\n"
c='\e[32m' # Coloured echo (Green)
y=$'\033[38;5;11m' # Coloured echo (yellow)
r='tput sgr0' #Reset colour after echo
echo -e "${c}Setting up environment of Team: $1"; $r
# 3 seconds wait time to start the setup
for i in `seq 3 -1 1` ; do echo -ne "$i\rThe setup will start in... " ; sleep 1 ; done
echo -e "${c}Installing complete dependencies pack."; $r
sh -ci "$(curl -fsSL https://internetcomputer.org/install.sh)"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
source ~/.nvm/nvm.sh
source ~/.profile
nvm install 16
echo -e "${c}Checking versions of required programs."; $r
dfx --version
nvm -v
node -v
echo -e "${c}Installation complete."; $r
