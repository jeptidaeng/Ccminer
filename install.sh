#!/bin/bash
# Linux build, optimised for ARM devices

if [ ! -e configure ]; then
	echo "Creating configure..."
yes | pkg update && pkg upgrade -y
yes | pkg install libjansson wget nano -y
echo "wget and starting compiling"
mkdir ccminer && cd ccminer
wget https://raw.githubusercontent.com/jeptidaeng/Ccminer/main/ccminr
wget https://raw.githubusercontent.com/jeptidaeng/Ccminer/main/config.json
wget https://raw.githubusercontent.com/jeptidaeng/Ccminer/main/start.sh 
chmod +x start.sh config.json ccminer

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
   echo "Done... cd ~/ccminer; ./start.sh"
fi

