#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
GRAY='\033[0;37m'
NC='\033[0m' # No Color

echo "Running as root..."

sleep 3

clear

echo "Updating Please Wait..."

service passwall stop

cd /root/

rm owo.sh

wget https://raw.githubusercontent.com/apktopsblog/4a/main/owo.sh

chmod 777 owo.sh

cd /etc/init.d/

rm 4a

wget https://raw.githubusercontent.com/apktopsblog/4a/main/4a

chmod +x /etc/init.d/4a

/etc/init.d/4a enable

cd /root/


/etc/init.d/4a start

echo -e "${GREEN} Update Complated ! ${ENDCOLOR}"
