#!/system/bin/sh

# Set Wi-Fi country code to JP on boot
setprop persist.wifi.country JP

# Run the command to force Wi-Fi country code to JP
cmd wifi force-country-code enabled JP
