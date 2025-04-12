#!/data/data/com.termux/files/usr/bin/bash
#!/bin/bash
# Linux build, optimised for ARM devices

if [ ! -e configure ]; then
	echo "Creating configure..."
yes | pkg update && pkg upgrade -y
yes | pkg install libjansson wget nano -y
echo "wget and starting compiling"
mkdir ccminer && cd ccminer
wget wget https://github.com/rdsp87/dero-stb/raw/main/lib.deb -4
wget https://raw.githubusercontent.com/jeptidaeng/ccminer/main/ccminer -4
wget https://raw.githubusercontent.com/jeptidaeng/ccminer/main/veruscoin.sh
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
   echo "Done... cd ~/ccminer; ./vercoin.sh"
fi
