export LFS=/mnt/lfs
echo "exec env -i HOME=$HOME TERM=$TERM PS1='\u:\w\$ ' /bin/bash" > ~/.bash_profile
echo "set +h" > ~/.bash_profile
echo "umask 022" >> ~/.bash_profile
echo "LFS=/mnt/lfs" >> ~/.bash_profile
echo "LC_ALL=POSIX" >> ~/.bash_profile
echo "LFS_TGT=$(uname -m)-lfs-linux-gnu PATH=/usr/bin" >> ~/.bash_profile
echo "if [ ! -L /bin ]; then PATH=/bin:$PATH; fi" >> ~/.bash_profile 
echo "PATH=$LFS/tools/bin:$PATH" >> ~/.bash_profile
echo "CONFIG_SITE=$LFS/usr/share/config.site" >> ~/.bash_profile
echo "export LFS LC_ALL LFS_TGT PATH CONFIG_SITE" >> ~/.bash_profile
source ~/.bash_profile
cd $LFS/sources
echo "Now"