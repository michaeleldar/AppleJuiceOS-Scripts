echo "exec env -i HOME=$HOME TERM=$TERM PS1='\u:\w\$ ' /bin/bash" > ~/.bash_profile
echo "set +h" > ~/.bash_profile
echo "umask 022" >> ~/.bash_profile
echo "LFS=/mnt/lfs" >> ~/.bash_profile
echo "LC_ALL=POSIX" >> ~/.bash_profile
LFS_TGT=$(uname -m)-lfs-linux-gnu PATH=/usr/bin
if [ ! -L /bin ]; then PATH=/bin:$PATH; fi PATH=$LFS/tools/bin:$PATH CONFIG_SITE=$LFS/usr/share/config.site export LFS LC_ALL LFS_TGT PATH CONFIG_SITE