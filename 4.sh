export LFS=/mnt/lfs
mv -v ~/Downloads/* $LFS/sources 
cd $LFS/sources
md5sum -c md5sums
echo "If there are errors, you have not installed all the packages properly."