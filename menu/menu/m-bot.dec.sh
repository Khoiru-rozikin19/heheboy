#!/bin/bash
grenbo="\e[92;1m"
NC='\033[0m'
clear
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│$NC\033[42m          MENU MANAGER BOT                $NC"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│  ${grenbo}1.${NC} \033[0;36mBOT FANEL${NC}"
echo -e "\033[1;93m│  ${grenbo}2.${NC} \033[0;36mBOT NOTIF${NC}"
echo -e "\033[1;93m│  ${grenbo}3.${NC} \033[0;36mBOT BACKUP${NC}"
echo -e "\033[1;93m│  ${grenbo}4.${NC} \033[0;36mDELETE BOT${NC}"
echo -e "\033[1;93m│  ${grenbo}0.${NC} \033[0;36mComeBack Menu${NC}"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e " "
read -p " select menu : " zx
case $zx in
1) clear ; mbot-panel ;;
2) clear ; bot ;;
3) clear ; backup ;;
4) clear ; del-bot-notif ;;
0) menu ;;
*) m-bot ;;
esac m-bot.temp1.sh 