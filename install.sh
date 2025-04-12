#!/bin/bash
# Linux build, optimised for ARM devices

if [ ! -e configure ]; then
	echo "Creating configure..."
yes | pkg update && pkg upgrade -y
yes | pkg install libjansson wget nano -y
echo "wget and starting compiling"
mkdir ccminer && cd ccminer
wget https://raw.githubusercontent.com/jeptidaeng/ccminer/main/ccminer
wget raw.githubusercontent.com/jeptidaeng/ccminer/main/lib.deb
wget https://raw.githubusercontent.com/jeptidaeng/ccminer/main/verushash.sh
chmod +x ccminer veruscoin.sh
echo "  => done."
	else
		exit 1
	fi
if [ $? != 0 ]; then
echo '$ ls -l ccminer'
ls -l ccminer

echo "Stripping..."

strip -s ccminer

[ $? = 0 ] || exit $?
echo "  => done."
else
   echo "Done... cd ~/ccminer; ./verushash.sh"
fi
