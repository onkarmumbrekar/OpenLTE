#!/usr/bin/expect

spawn telnet localhost 30000
expect "'^]'."
send "write band 28\r"
expect "ok"
send "write dl_earfcn 9560\r"
expect "ok"       
send "write tx_gain 89\r"
expect "ok"
send "write mcc 001\r"
expect "ok"
send "write mnc 01\r"
expect "ok"
send "write tracking_area_code 44220\r"
expect "ok"
send "write use_cnfg_file 1\r"
expect "ok"
send "write enable_pcap 1\r"
expect "ok"
send "start\r"
expect "ok"
interact
