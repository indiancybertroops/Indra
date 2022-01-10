#!/bin/bash
# instagram: @IndianCyberTroops
clear
N='\033[0m'
R='\033[0;31m'
G='\033[0;32m'
O='\033[0;33m'
B='\033[0;34m'
Y='\033[0;38m'       # Yellow
C='\033[0;36m'         # Cyan
W='\033[0;37m'        # White
trap 'printf "\e[1;77m \n Ctrl+C was pressed, exiting...\n\n \e[0m"; exit 0' 2

function banner() {
	
	echo -e "
${O}      ██╗███╗   ██╗██████╗ ██████╗  █████╗ 
${R}      ██║████╗  ██║██╔══██╗██╔══██╗██╔══██╗
${G}      ██║██╔██╗ ██║██║  ██║██████╔╝███████║
${O}      ██║██║╚██╗██║██║  ██║██╔══██╗██╔══██║
${B}      ██║██║ ╚████║██████╔╝██║  ██║██║  ██║
${C}      ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
  ${C}A Tool By Indian Cyber Troops
Author:${O}Krishanu Sharma            
${W}Look Web With Third Eye And Check Vuln ${B}Host Header Injection
${Y}A New Way To Gain Information In New Era
       ${B}Github:https://github.com/indiancybertroops 
       ${O}Instagram:instagram.com/indiancybertroops
                                       "

}
banner
echo -e "${O}[+] Checking Internet Connectivity"
if [[ "$(ping -c 1 8.8.8.8 | grep '100% packet loss' )" != "" ]]; then
  echo "No Internet Connection"
  exit 1
  else
  echo "Internet is present"
  
fi
echo -e ${N}"wait Tool Is Loading"
sleep 2
clear
banner
echo -e -n ${B}"\n[+] Enter Url (e.g https://site.com) : "
read domain
sleep 1
echo -e ${R}"\n[+] Finding Host Header Injection"
sleep 2
file=$(curl -s -m5 -I $domain -H "X-Forwarded-Host: evil.com")
echo -n -e ${Y}"\nURL: $i" >> output.txt
echo "$file" >> output.txt
clear
banner
echo -e ${B}"===================${O}========================="
if grep -q evil   <<<"$file"
  then
  echo -n -e ${O}"URL: $domain  [Vulnerable]\n"
  rm output.txt
  else
  echo -n -e ${O}" URL: $domain  [Not Vulnerable]"
   rm output.txt
 fi
