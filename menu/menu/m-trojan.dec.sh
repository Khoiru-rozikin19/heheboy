#!/bin/bash

NC='\033[0;37m'
PURPLE='\033[0;34m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BIWhite='\033[1;97m'  
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
clear
clear

clear
echo -e "$PURPLE┌─────────────────────────────────────────────────┐${NC}"
echo -e "$PURPLE│\e[1;97;101m                    TROJAN MENU                  $PURPLE│$NC"
echo -e "$PURPLE└─────────────────────────────────────────────────┘${NC}"
echo -e " $PURPLE┌───────────────────────────────────────────────┐${NC}"
echo -e "     ${GREEN}[${BIWhite}1${GREEN}] ${NC}Create Trojan Account      "
echo -e "     ${GREEN}[${BIWhite}2${GREEN}] ${NC}Trial Account Trojan     "
echo -e "     ${GREEN}[${BIWhite}3${GREEN}] ${NC}Delete Account Trojan      "
echo -e "     ${GREEN}[${BIWhite}4${GREEN}] ${NC}Renew Account Trojan      "
echo -e "     ${GREEN}[${BIWhite}5${GREEN}] ${NC}Cek User Login Account Trojan      "
echo -e "     ${GREEN}[${BIWhite}0${GREEN}] Back To Menu     "
echo -e " "
echo -e "     \e[1;97;101m✶ Upload By Arya Blitar 081931615811 ✶ ${NC} "
echo -e " ${PURPLE}└──────────────────────────────────────────────┘${NC}"
echo ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; addtr ;;
2) clear ; trialtr ;;
3) clear ; deltr ;;
4) clear ; renewtr ;;
5) clear ; cektr ;;
0) clear ; menu ;;
x) exit ;;
*) echo -e "" ; echo "Press any key to back on menu" ; sleep 1 ; menu ;;
esac
 m-trojan.temp1.sh 