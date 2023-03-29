#!/system/bin/sh

#Set Wi-Fi country code to JP
setprop persist.wifi.country JP

# Wait for the Wi-Fi interface to be up
while [ ! -f /sys/class/net/wlan0/operstate ]
do
  sleep 1
 done
 
 #set the Wi-Fi country code to JP by writing to the driver file
 echo JP > /sys/module/cfg80211/parameters/country
 
 #Restart the Wi-Fi interface to apply the changes
 svc wifi disable
 svc wifi enable
