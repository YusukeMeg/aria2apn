@echo off
echo (1/4)作業用ファイルを作成しています…
echo Invoke-RestMethod -Uri "http://192.168.0.1/goform/goform_set_cmd_process" -Method POST -Body 

"isTest=false&goformId=APN_PROC_EX&apn_action=save&apn_mode=manual&profile_name=AISinternet&wan_dial=*99%23&apn_select=manual&pdp_type=IP&pdp_select=auto&pdp_addr=&index=

0&wan_apn=internet&ppp_auth_mode=none&ppp_username=&ppp_passwd=&dns_mode=auto&prefer_dns_manual=&standby_dns_manual=" > .\apn.ps1
echo Invoke-RestMethod -Uri "http://192.168.0.1/goform/goform_set_cmd_process" -Method POST -Body 

"isTest=false&goformId=APN_PROC_EX&apn_mode=manual&apn_action=set_default&set_default_flag=1&pdp_type=IP&index=0" >> .\apn.ps1
echo Invoke-RestMethod -Uri "http://192.168.0.1/goform/goform_set_cmd_process" -Method POST -Body 

"goformId=SET_CONNECTION_MODE&isTest=false&ConnectionMode=auto_dial&roam_setting_option=on" >> .\apn.ps1
echo Invoke-RestMethod -Uri "http://192.168.0.1/goform/goform_set_cmd_process" -Method POST -Body "isTest=false&goformId=REBOOT_DEVICE" >> .\apn.ps1

echo (2/4)設定を変更しています…
powershell -NoProfile -ExecutionPolicy Unrestricted .\apn.ps1　> nul

echo (3/4)作業用ファイルを削除しています…
del .\apn.ps1
echo (4/4)完了しました！
pause > nul
exit
