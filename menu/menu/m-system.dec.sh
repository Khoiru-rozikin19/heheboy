#!/bin/bash

NC='\033[0;37m'
PURPLE='\033[0;34m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BIWhite='\033[1;97m'  
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
clear
clear

function cok(){
rm -rf fv-dropbear.sh
apt -y remove dropbear
sleep 0.5
apt -y purge dropbear
sleep 0.5
apt-get -y --purge remove dropbear
sleep 0.5
apt-get install dropbear -y > /dev/null 2>&1
wget -O /etc/issue.net "https://raw.githubusercontent.com/Arya-Blitar22/st-pusat/main/media/issue.net"
wget -q -O /etc/default/dropbear "https://raw.githubusercontent.com/Arya-Blitar22/st-pusat/main/media/dropbear.conf"
chmod +x /etc/default/dropbear
/etc/init.d/dropbear restart
systemctl restart dropbear
rm -rf fv-dropbear.sh
read -n 1 -s -r -p "Press any key to back on menu"
    m-system
}
function asu(){
clear
echo -e " -------------------------"
echo -e " \e[1;97;101m  Fix Haproxy & Nginx    ${NC}   "
echo -e " ------------------------- "
echo -e ""
echo -e " Upload By Arya Blitar 081931615811 "
echo -e ""
read -p " Masukin Domainya : " -e domain

rm -fr /etc/xray/domain
echo "${domain}" > /etc/xray/domain
systemctl stop haproxy
systemctl stop nginx
wget -O /etc/haproxy/haproxy.cfg "https://raw.githubusercontent.com/Arya-Blitar22/cok/main/fire/haproxy.cfg" >/dev/null 2>&1
wget -O /etc/nginx/conf.d/xray.conf "https://raw.githubusercontent.com/Arya-Blitar22/cok/main/fire/xray.conf" >/dev/null 2>&1
sed -i "s/xxx/${domain}/g" /etc/haproxy/haproxy.cfg
sed -i "s/xxx/${domain}/g" /etc/nginx/conf.d/xray.conf
curl https://raw.githubusercontent.com/Arya-Blitar22/st-pusat/main/media/nginx.conf > /etc/nginx/nginx.conf

cat /etc/xray/xray.crt /etc/xray/xray.key | tee /etc/haproxy/hap.pem

systemctl restart nginx
systemctl restart haproxy

read -n 1 -s -r -p "Press any key to back on menu"
    m-system
    
}

function ngik(){
clear
rm -f /etc/nginx/nginx.conf
rm -f /etc/nginx/conf.d/xray.conf
rm -f /etc/haproxy/haproxy.cfg >/dev/null 2>&1
wget https://github.com/Arya-Blitar22/cok/raw/main/fire/xray.conf -O /etc/nginx/conf.d/xray.conf
wget https://github.com/Arya-Blitar22/st-pusat/raw/main/media/nginx.conf -O /etc/nginx/nginx.conf
wget https://github.com/Arya-Blitar22/cok/raw/main/fire/haproxy.cfg -O /etc/haproxy/haproxy.cfg
wget https://github.com/Arya-Blitar22/st-pusat/raw/main/media/tun.conf -O /usr/bin/tun.conf
cat /etc/xray/xray.crt /etc/xray/xray.key | tee /etc/haproxy/hap.pem
domain=$(cat /etc/xray/domain)
sed -i "s/xxx/${domain}/g" /etc/haproxy/haproxy.cfg
sed -i "s/xxx/${domain}/g" /etc/nginx/conf.d/xray.conf
systemctl restart nginx haproxy ws
echo -e "\033[0;37m Successfully Fix All Service\033[0m"
sleep 2
menu
}

function hapus(){
clear
rm -rf /etc/xray/config.json
rm -rf /etc/nginx/conf.d/xray.conf
wget -q -O /etc/nginx/conf.d/xray.conf "https://raw.githubusercontent.com/Arya-Blitar22/cok/main/fire/xray.conf"
wget -q -O /etc/xray/config.json "https://raw.githubusercontent.com/Arya-Blitar22/st-pusat/main/media/config.json"
systemctl restart nginx xray
sleep 2
menu
}

clear
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│\e[1;97;101m          MENU MANAGER SYSTEM             $NC"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e "\033[1;93m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;93m│  ${grenbo}1.${NC} \033[0;36mCLEAR CACHE${NC}"
echo -e "\033[1;93m│  ${grenbo}2.${NC} \033[0;36mCLEAR LOG ${NC}"
echo -e "\033[1;93m│  ${grenbo}3.${NC} \033[0;36mAUTO SET REBOOT${NC}"
echo -e "\033[1;93m│  ${grenbo}4.${NC} \033[0;36mMONITOR BANWITH${NC}"
echo -e "\033[1;93m│  ${grenbo}5.${NC} \033[0;36mLIMIT SPEED${NC}"
echo -e "\033[1;93m│  ${grenbo}6.${NC} \033[0;36mCREAT SLOWDNS${NC}"
echo -e "\033[1;93m│  ${grenbo}7.${NC} \033[0;36mFIX DROPBEAR${NC}"
echo -e "\033[1;93m│  ${grenbo}8.${NC} \033[0;36mFIX Haproxy Nginx${NC}"
echo -e "\033[1;93m│  ${grenbo}9.${NC} \033[0;36mFIX All Service ${NC}"
echo -e "\033[1;93m│  ${grenbo}10.${NC}\033[0;36mHapus All User Vray  ${NC}"
echo -e "\033[1;93m│  ${grenbo}0.${NC} \033[0;36mBack Menu${NC}"
echo -e "\033[1;93m└──────────────────────────────────────────┘\033[0m"
echo -e " "
echo -e "   \e[1;97;101m✶ Upload By Arya Blitar 081931615811 ✶ ${NC} "
echo -e " ${PURPLE}└──────────────────────────────────────────────┘${NC}"
echo ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; clearcache ;;
2) clear ; clearlog ;;
3) clear ; autoreboot ;;
4) clear ; bw ;;
5) clear ; limitspeed ;;
6) clear ; sdo ;;
7) clear ; cok ;;
8) clear ; asu ;;
9) clear ; ngik ;;
10) clear ; hapus ;;
0) clear ; menu ;;
x) exit ;;
*) echo -e "" ; echo "Press any key to back on menu" ; sleep 1 ; menu ;;
esac
 m-system.temp1.sh 