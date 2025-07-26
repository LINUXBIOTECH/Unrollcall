#!/bin/bash
clear
echo -e "\e[34m##################################################################################################"
sleep 1
echo -e "\e[32mF.L.U.SH_USB\e[0m is starting up"
sleep .5
echo -e "\e[31mWARNING: FLUSH_USB MAY CAUSE IRREVERSIBLE DAMAGE TO CHROME OS"
sleep .5
echo -e "\e[33mNOTE: FLUSH_USB NEEDS AN INTERNET CONNECTION TO FUNCTION"
sleep .5
echo -e "\e[36mFFFFFFFFFFFFFFFFFFFFFFLLLLLLLLLLL             UUUUUUUU     UUUUUUUU   SSSSSSSSSSSSSSS HHHHHHHHH     HHHHHHHHH
F::::::::::::::::::::FL:::::::::L             U::::::U     U::::::U SS:::::::::::::::SH:::::::H     H:::::::H
F::::::::::::::::::::FL:::::::::L             U::::::U     U::::::US:::::SSSSSS::::::SH:::::::H     H:::::::H
FF::::::FFFFFFFFF::::FLL:::::::LL             UU:::::U     U:::::UUS:::::S     SSSSSSSHH::::::H     H::::::HH
  F:::::F       FFFFFF  L:::::L                U:::::U     U:::::U S:::::S              H:::::H     H:::::H  
  F:::::F               L:::::L                U:::::D     D:::::U S:::::S              H:::::H     H:::::H  
  F::::::FFFFFFFFFF     L:::::L                U:::::D     D:::::U  S::::SSSS           H::::::HHHHH::::::H  
  F:::::::::::::::F     L:::::L                U:::::D     D:::::U   SS::::::SSSSS      H:::::::::::::::::H  
  F:::::::::::::::F     L:::::L                U:::::D     D:::::U     SSS::::::::SS    H:::::::::::::::::H  
  F::::::FFFFFFFFFF     L:::::L                U:::::D     D:::::U        SSSSSS::::S   H::::::HHHHH::::::H  
  F:::::F               L:::::L                U:::::D     D:::::U             S:::::S  H:::::H     H:::::H  
  F:::::F               L:::::L         LLLLLL U::::::U   U::::::U             S:::::S  H:::::H     H:::::H  
FF:::::::FF           LL:::::::LLLLLLLLL:::::L U:::::::UUU:::::::U SSSSSSS     S:::::SHH::::::H     H::::::HH
F::::::::FF           L::::::::::::::::::::::L  UU:::::::::::::UU  S::::::SSSSSS:::::SH:::::::H     H:::::::H
F::::::::FF           L::::::::::::::::::::::L    UU:::::::::UU    S:::::::::::::::SS H:::::::H     H:::::::H
FFFFFFFFFFF           LLLLLLLLLLLLLLLLLLLLLLLL      UUUUUUUUU       SSSSSSSSSSSSSSS   HHHHHHHHH     HHHHHHHHH"
echo -e "Technical stuff will proceed. Please wait"
sleep .5
sudo crossystem dev_default_boot=1
sudo crossystem dev_boot_usb=1
sudo crossystem dev_boot_altfw=1
sudo crossystem dev_boot_legacy=1
sudo crossystem dev_boot_signed_only=0
sudo enable_dev_usb_boot
echo -e "ALL crossystem seetings applied. If there were any errors, the script wil not work, and USB boot is not possible on your device if so, press Ctrl+C NOW"
sleep 5
echo -e "Starting Mr.Chromebox.tech USB BOOT SCRIPT. Please Press the key 1, and download the RW_LEGACY firmware once it loads the menu. "

cd; curl -LO mrchromebox.tech/firmware-util.sh && sudo bash firmware-util.sh
sudo crossystem dev_boot_legacy=1
clear
echo -e "THE USB BOOT FIRMWARE HAS SUCCESFULLY INSTALLED. Press Ctrl + L on boot screen to usb boot"
