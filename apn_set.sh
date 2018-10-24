curl -X POST \
  http://192.168.0.1/goform/goform_set_cmd_process \
  -H 'Cache-Control: no-cache' \
  -d 'isTest=false&goformId=APN_PROC_EX&apn_action=save&apn_mode=manual&profile_name=AIS+internet&wan_dial=*99%23&apn_select=manual&pdp_type=IP&pdp_select=auto&pdp_addr=&index=0&wan_apn=internet&ppp_auth_mode=none&ppp_username=&ppp_passwd=&dns_mode=auto&prefer_dns_manual=&standby_dns_manual='

curl -X POST \
  http://192.168.0.1/goform/goform_set_cmd_process \
  -H 'Cache-Control: no-cache' \
  -d 'isTest=false&goformId=APN_PROC_EX&apn_mode=manual&apn_action=set_default&set_default_flag=1&pdp_type=IP&index=0'

curl -X POST \
  http://192.168.0.1/goform/goform_set_cmd_process \
  -H 'Cache-Control: no-cache' \
  -d 'isTest=false&goformId=APN_PROC_EX&apn_mode=manual&apn_action=set_default&set_default_flag=1&pdp_type=IP&index=0'

curl -X POST \
  http://192.168.0.1/goform/goform_set_cmd_process \
  -H 'Cache-Control: no-cache' \
  -d 'isTest=false&goformId=REBOOT_DEVICE'
