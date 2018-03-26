#!/bin/sh -e
echo "==================== Installing zephyr dependencies ==================="
apt-get install git make gcc g++ python3-ply python3-yaml doxygen device-tree-compiler qemu
apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib g++-multilib build-essential chrpath socat libsdl1.2-dev xterm libreadline-dev makeself p7zip-full cpio gperf
apt-get install python3-pip
apt-get install gcc-6-multilib gcovr valgrind ninja-build lcov

# for net-tools
apt-get install libglib2.0-dev libpcap-dev
pip3 install awscli breathe==4.7.3 sphinx==1.6.5 docutils==0.14 sphinx_rtd_theme junit2html
pip3 install pyelftools==0.24 pykwalify sh gitlint==0.9.0


wget -q https://launchpad.net/ubuntu/+archive/primary/+files/ccache_3.3.3-1_amd64.deb
dpkg -i ccache_3.3.3-1_amd64.deb
rm ccache_3.3.3-1_amd64.deb


wget -q https://cmake.org/files/v3.9/cmake-3.9.1-Linux-x86_64.tar.gz
tar xf cmake-3.9.1-Linux-x86_64.tar.gz
cp -a cmake-3.9.1-Linux-x86_64/bin/* /usr/local/bin/
cp -a cmake-3.9.1-Linux-x86_64/share/* /usr/local/share/
rm -rf cmake-3.9.1-Linux-x86_64
cmake -version

echo "=============== Successfully Installed zephyr deps ============"
