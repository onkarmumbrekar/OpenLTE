#!/usr/bin/expect

spawn telnet localhost 30000
expect "'^]'."
send "write band 8\r"
expect "ok"
send "write dl_earfcn 3550\r"
expect "ok"       
send "write tx_gain 89\r"
expect "ok"
send "write mcc 466\r"
expect "ok"
send "write mnc 89\r"
expect "ok"
send "write tracking_area_code 60311\r"
expect "ok"
send "write use_cnfg_file 1\r"
expect "ok"
send "write enable_pcap 1\r"
expect "ok"
interact
