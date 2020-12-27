## Each brach represet new attack.
`git checkout [branch_name]`

- whenerver chnaging branch remove build folder.


## Prerequisites

- USB 3.0 interface
- Modern multicore CPU (Intel Core i5, Core i7 or equivalent with SSE4.1 SSE4.2 and AVX support)
- Use broadband Antenna for Attacker eNodeB because it supports multiple frequencies 
- Need to use low latency kernel

## Install gnuradio with UHD (USRP)
this are the required packges for using USRP b210
`sudo apt-get install libuhd-dev libuhd003 uhd-host`
`sudo apt-get install gnuradio`


## Installing OpenLTE

**Dependencies:**

`sudo apt-get install libmbedtls-dev`

- `sudo apt-get install cmake libfftw3-dev libmbedtls-dev libboost-program-options-dev libconfig++-dev libsctp-dev gr-osmosdr libbladerf-dev`

Follow this link to solve polarssl problem
- [polarssl](https://blog.csdn.net/flyearth/article/details/77234177) 

Download packages from below links:

https://launchpad.net/ubuntu/vivid/amd64/libpolarssl7/1.3.9-2.1

https://launchpad.net/ubuntu/xenial/amd64/libpolarssl-dev/1.3.9-2.1

### Install polarssl

`sudo dpkg -i libpolarssl7_***.deb`

`sudo dpkg -i libpolarssl-dev_***.deb`

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

- Go to OpenLTE foler
- GO to build folder
- go to LTE_fdd_enodeb folder

`sudo LTE_fdd_enodeb`

**Second terminal:**

This is the control interface of the eNodeB.

`telnet 127.0.0.1 30000`

- Download scripts from script folder [Note : only master branch contain this folder]
- give execution permission

`chmod +x [script]` 

**Third terminal (Optional):**

This command will provide debug log messages.

`telnet 127.0.0.1 30001`

!! Scripts from ``script`` folder can be used to automate process of launching fake base station.




Refer ``OpenLTE.md`` for more information.