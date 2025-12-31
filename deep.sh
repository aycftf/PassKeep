#!/usr/bin/env bash


checkroot=$(echo "$UID")
userofperms=$(getent group | grep 1000 | cut -d ':' -f 1)
whoo=$(whoami)
pwdd=$(pwd)
if [ "$checkroot" -ne 0 ]; then
	echo -e "Must run command as root....  \n\n "
	echo -e "Currently running as user $userofperms.. " && exit 1

else
	sleep 1
	echo -e "\n\n GPG FILES TO DECRYPT: \n"
	sleep 1.2
	find /home/"$userofperms"/ -type d -name "NEWPASSWORD" -exec ls -lah  {} \;
	sleep 1
	find /home/"$userofperms"/ -type d -name "NEWPASSWORD" -exec pwd {} \; >> newpass
	sudo chown -R "$userofperms":"$userofperms" newpass && sudo chmod u+r newpass 
	cat newpass | grep -v "ignoring: " | uniq  && echo -e "\n Directory of password locations:  "
	sleep 1
	sudo rm newpass



fi

read -p "Enter gpg password file name to decrypt here (no .gpg trailer): : " file

if sudo file NEWPASSWORD/"$file".gpg | grep -q -w "PGP RSA"  > /dev/null  2>&1; then
	echo "Gpg file detected.. decrypting now.." && sleep 1

	read -p "Is pgp secret keys already imported for decryption? Common practice usually involves encrypting with public keys, and decrypting with private keys.. (y/n): " -en 1 imported

	if [[ "$imported" =~ y|Y ]]; then
		findfiles=$(find $(pwd) -type f -name "$file.gpg")

		if sudo gpg --decrypt "$findfiles" > /dev/null; then
			echo -e "\n \n Works! " && exit 0



		else



			echo -e "Unable to decrypt "$file".... try again or re import pgp keys " && exit 1


		fi



	fi



else
	echo -e "\n File doesn't exist or is not pgp file.. : "$file" " && exit 1
fi
