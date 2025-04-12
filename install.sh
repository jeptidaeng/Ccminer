#!/bin/bash
# Linux build, optimised for ARM devices

if [ ! -e configure ]; then
	echo "Creating configure..."
yes | pkg update && pkg upgrade -y
yes | pkg install libjansson git nano -y
echo "wget and starting compiling"
mkdir ccminer && cd ccminer
git clone https://github.com/jeptidaeng/ccminer.git
cd ccminer 
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
   echo "Done... cd ~/ccminer; ./veruscoin.sh"
fi
