#!/bin/bash

sleep 3

service passwall stop

if [[ -f xray8.ipk ]]

then 

  rm xray8.ipk

else 

  echo "Stage 2 Passed" 

fi


cd /tmp
echo "Downloading latest version of Xray-core ..."
wget -q https://dl.apktops.ir/api/xray8.ipk

if [[ -f xray8.ipk ]]

then 

  echo " Download Successful !"

else 

  echo " ERROR : Download Unsuccessful "

fi

echo "INSTALLING XRAY ..."
opkg install xray8.ipk -d ram


if [[ -f xray8.ipk ]]

then 

  rm xray8.ipk

else 

  echo "Stage 1 Passed" 

fi

service passwall restart
cd /root/

echo "Done !"
