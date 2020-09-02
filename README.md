## Each brach represet new attack.
`git checkout [branch_name]`


## Prerequisites

- USB 3.0 interface
- Modern multicore CPU (Intel Core i5, Core i7 or equivalent with SSE4.1 SSE4.2 and AVX support)
- Use broadband Antenna for Attacker eNodeB because it supports multiple frequencies 

## Install gnuradio with UHD (USRP)
this are the required packges for using USRP b210

`sudo apt-get install libuhd-dev libuhd003 uhd-host`

`sudo apt-get install gnuradio`


## Installing OpenLTE

**Dependencies:**

`sudo apt-get install libmbedtls-dev`

`sudo apt-get install -y gr-osmosdr`


**Build and install:**

```
mkdir build
cd build && cmake ..
make
```

(Optional):

`sudo make install`

## Running OpenLTE eNodeB

**First terminal window:**

Do not close this windows during operation!

`LTE_fdd_enodeb`

**Second terminal:**

This is the control interface of the eNodeB.

`telnet 127.0.0.1 30000`

**Third terminal (Optional):**

This command will provide debug log messages.

`telnet 127.0.0.1 30001`

!! Scripts from ``script`` folder can be used to automate process of launching fake base station.




Refer ``OpenLTE.md`` for more information.
