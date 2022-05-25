#tes
apt install software-properties-common
add-apt-repository ppa:jonathonf/gcc-7.1
apt update
apt upgrade
apt install git build-essential cmake libuv1-dev libssl-dev libmicrohttpd-dev gcc-7 g++-7
git clone https://github.com/xmrig/xmrig.git && cd xmrig && mkdir build && cd build && cmake .. -DCMAKE_C_COMPILER=gcc-7 -DCMAKE_CXX_COMPILER=g++-7
make
cat /sys/kernel/mm/transparent_hugepage/enabled
sysctl -w vm.nr_hugepages=8
/root/xmrig/build/./xmrig -a cryptonight -o stratum+tcp://pool.supportxmr.com:5555 -u 8A2dMrR8WtpPJWCMYu1cUGa1HZvL3ixhiGpCEb9ncX3KBYz9DKsY9FN65GVGCaSjrEXhgPZoaz6MZ7NPGWoQ915wKLVsnGx -p MinerIdentifier:Email -t 16
/root/xmrig/build/./xmrig -h
