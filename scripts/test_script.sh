#!/usr/bin/expect
set timeout 20

set mcc [lindex $argv 0]
set mnc [lindex $argv 1]
set tracking_area_code [lindex $argv 2]

set band [lindex $argv 3]
set dl_earfcn [lindex $argv 4]

set tx_gain 89
set use_cnfg_file 1
set enable_pcap 1

spawn telnet localhost 30000
expect "'^]'."
send "write band $band\r"
expect "ok"
send "write dl_earfcn $dl_earfcn\r"
expect "ok"       
send "write tx_gain 89\r"
expect "ok"
send "write mcc $mcc\r"
expect "ok"
send "write mnc $mnc\r"
expect "ok"
send "write tracking_area_code $tracking_area_code\r"
expect "ok"
send "write use_cnfg_file 1\r"
expect "ok"
send "write enable_pcap 1\r"
expect "ok"
send "start\r"
expect "ok"
interact
