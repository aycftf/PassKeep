#!/bin/bash

##Script to encrypt password invoked via python script

##COLOR DEF
# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' #####No Color (reset)
BOLD="\e[1m ... \e[0m" 

##ASCII
echo -e "\n"
echo -e "\n"
echo -e "${BOLD}""${CYAN}"
echo -e "\n"
echo -e "\n"
##Regex with sed command to filter output for EOF
cat << 'EOF' 
⠤⣤⣤⣤⣄⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣠⣤⠤⠤⠴⠶⠶⠶⠶
⢠⣤⣤⡄⣤⣤⣤⠄⣀⠉⣉⣙⠒⠤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠴⠘⣉⢡⣤⡤⠐⣶⡆⢶⠀⣶⣶⡦
⣄⢻⣿⣧⠻⠇⠋⠀⠋⠀⢘⣿⢳⣦⣌⠳⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠞⣡⣴⣧⠻⣄⢸⣿⣿⡟⢁⡻⣸⣿⡿⠁
⠈⠃⠙⢿⣧⣙⠶⣿⣿⡷⢘⣡⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣷⣝⡳⠶⠶⠾⣛⣵⡿⠋⠀⠀
⠀⠀⠀⠀⠉⠻⣿⣶⠂⠘⠛⠛⠛⢛⡛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠛⠀⠉⠒⠛⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⢸⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢻⡁⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠘⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠿⠀⠀⠀⠀
EOF


echo -e "${NC}"
echo -e "${BOLD}""${PURPLE}" "Dont Settle For Shit Passwords" "${NC}"



sleep 3
##echo pass starting
echo -e "${BOLD}" "${RED}"
echo -e "\n"
read -p  "EXTRA ENCRYPTION WITH OPENSSL AND BAS64 PRE ENCODING?  ----  Even if someone gets access to your base encryption resort --- gpg ..   They still need specfic password access with this layer (y/n) " extra
echo -e "\n"
if [ "$extra" == "y" ]; then
	echo -e "\e[0;33m IF UNFAMILIAR WITH GPG, OPENSSL, OR BAS64 PLEASE LEARN ENCRYPTION STANDARDS WITH GPG/OPENSSL TOOL AND HOW TO USE IT \e[0m"
	sleep 1
	while true; do

		x=$"python3 passwordgen.py"
		$x

		read -p "Is this pasword Okay? (y = All Good n = Regen): " regen

		if [ "$regen" == "n" ]; then
			echo -e "\n"
			ls -la | grep "pass"
			read -p "Paste Unique ID (e.g. 123219034120947321) to delete now: " uid
			sudo rm pass"$uid".txt
			continue
		else
			break
		fi



	done
	#Regardless of specific encryption type, move file source to specific created dir to then  ---
	##Change perms, as well as start gpg key creation process
	current_dir=$(pwd)
	#Grab user using cut and awk for user column
	user=$(getent group wheel | cut -d: -f4 | awk -F, '{print $1}')
	echo -e "Creating new password file in $current_dir"
	echo -e "\n"
	#temp perm
	ls -la
	read -p "Enter the string of numbers for the current password file to work with here: " RANDOMINT

	#sudo chown "$user":"$user" "$current_dir""/pass${RANDOMINT}.txt"
	#sudo chmod ugo+rwx "$current_dir""/pass${RANDOMINT}.txt"
	#pass_folder_exist_check=$("$current_dir"/pass"$RANDOMINT".txt)
	#if ! [[ -f "$pass_folder_exist_check" ]]; then
	#	echo "PASSWORD FILE NOT FOUND.... "$pass_folder_exist_check" EXITING NOW"
	#	exit 0
	#fi

	echo "Inputting necessary permissions on file"
	sudo chmod ug+rwx "$current_dir""/pass${RANDOMINT}.txt"
	sudo chown root:"$user" "$current_dir""/pass${RANDOMINT}.txt"
	ls -la | grep "pass${RANDOMINT}.txt"
	echo "Encrypting Password Now...."
	#Key Difference in choice.... now we double obfuscate such password.txt
	#We include both base64 and openssl with salt for our encryption choice
	#pass = value of password in created file
	#base 64 BEFORE openssl encrypts file



	##OPEN SSL FLAGS
	#Cipher : -aes-256-cbc
	#password-based key derivation function for pass with file: -pbkdf2
	#Iterations for cipher text within file : -iter 278967
	#Salted encryption along with specification   : -salt -md sha512
	#Bas64 encode Twice for encryption : -a
	#use hex (cuz weve used b64 twice in algo) to use for second encryption
	#One file, specifically hex=16 is the "IV" file and the other includes a hex key file
	sudo openssl rand -hex 32 > key32.hex
	sudo openssl rand -hex 16 > key16.hex
	ls -la | grep "key16.hex" 
	ls -la | grep "key32.hex" 
	echo "Generated second layer encryption keys.."
	sleep 3
	#setting perms
	sudo chown -R "$user":"$user" key32.hex
	sudo chown -R "$user":"$user" key16.hex
	sudo chmod ug+rw key32.hex
	sudo chmod ug+rw key16.hex
	sudo chmod o-rwx key32.hex
	sudo chmod o-rwx key16.hex
	sleep 3
	echo "Successfully set perms to specific keys for only root and user access"
	sleep 1
	pass=$(cat "pass${RANDOMINT}.txt") 
	echo -e "\n"
	echo -e " "${BOLD}" ATTEMPTING TO ENCRYPT PASSWORD FILE USING DOUBLE OPENSSL + BASSE64 "${NC}" "
	echo "$pass" | base64 > base64.txt 
	cat "$current_dir"/base64.txt
	sleep 1
	openssl enc -aes-256-cbc -pbkdf2 -iter 278967 -salt -md sha512 -in base64.txt -out secret.enc 
	sleep 2
	echo "testing...."
	#if checking if first layer of enc worked
	if [[ $? -eq 0 ]]; then
		sleep 1
		echo -e " \n FIRST ENCRYPTION METHOD SUCCESSFULL! ATTEMPTING NEXT ENCRYPTION LAYER... \n "
		openssl enc -camellia-256-cbc -a -salt -K "$(cat key32.hex)" -iv "$(cat key16.hex)" -in secret.enc -out newpass.enc
		rm "pass${RANDOMINT}.txt"
		ls -la 
		sleep 1

		echo -e "\n\n\n\n\n"


		echo "DECRYPT TEST!!!"
		openssl enc -d -camellia-256-cbc -a -salt -K "$(cat key32.hex)" -iv "$(cat key16.hex)" -in newpass.enc -out newSec.dec
		openssl enc -d -aes-256-cbc -pbkdf2 -iter 278967 -salt -md sha512 -in newSec.dec  -out newBase64.txt 
		cat newBase64.txt
		ls -la 
		sleep 5
		mkdir newStuff
		scp "pass${RANDOMINT}.txt" base64.txt newSec.dec secret.enc key32.hex key16.hex newBase64.txt newpass.enc  newStuff/
		sudo rm "pass${RANDOMINT}.txt" base64.txt newSec.dec secret.enc key32.hex key16.hex newBase64.txt newpass.enc  
		cd newStuff



		exit 0
	

	else
		echo -e "\n"
		echo "Error running encryption script on your files..."
		echo "Check your dir "$dir" and try again...."
		cowsay -d "exiting!"
		exit 0


	sleep 1
	echo "Testing to now decrypt thus file in attempt to make sure it works..."
	sleep 1
	ls -la
	

	fi





	##delete keys if needed
	sudo gpg --list-keys
	sleep 1


else

	echo -e "\e[1m GENERATING YOUR PASSWORD \e[0m" 
	echo -e " \n "${NC}" "
	echo -e "\e[0;33m IF UNFAMILIAR WITH GPG, OPENSSL, OR BAS64 PLEASE LEARN ENCRYPTION STANDARDS WITH GPG/OPENSSL TOOL AND HOW TO USE IT \e[0m"
	x=$"python3 passwordgen.py"
	##invoke python script
	$x


	#Regardless of specific encryption type, move file source to specific created dir to then  ---
	##Change perms, as well as start gpg key creation process
	current_dir=$(pwd)
	echo -e "Creating new password file in $current_dir"
	echo -e "\n"
	read -p "Enter the string of numbers for the current password file to work with here: " RANDOMINT
	echo "Inputting necessary permissions on file"
	sudo chmod ug+rwx "$current_dir""/pass${RANDOMINT}.txt"
	sudo chown root:"$user" "$current_dir""/pass${RANDOMINT}.txt"
	ls -la | grep "pass${RANDOMINT}.txt"
	echo "Encrypting Password Now...."
	##delete keys if needed
	sudo gpg --list-keys
	sleep 1
fi



read -p "Before continuing with encryption process... delete any root keys? -- IRREVERSIBLE (y/n): " delete_gpg

if [ "$delete_gpg" == "y" ]; then
	read -p "Enter gpg Revocation Key ID Listed Above that you would like to delete... (EX: 7856E14A9A6A8A492FD7F068ECE3): " revoc
	##Delete effective root gpg keys stored
	sudo gpg --delete-secret-keys "${revoc}"
	sleep 1
	sudo gpg --delete-keys "${revoc}"

elif [ "$delete_gpg" == "$n" ]; then
	echo "Skipping...."

else
	echo "invalid input... skipping"
fi
#newline break
echo -e "\n"
read -p "Re-use IMPORTED ROOT GPG Key? (y/n): " reuse

if [ "$reuse" == "y" ]; then
	gpg()
	exit 0
fi
sudo gpg --full-generate-key

sleep 1
echo -e "\n"
echo -e "\n"

read -p "Paste Key ID to import via created gpg key: (EX 98AD55D7C6D323F9A1E543805FA1EC400B10CD4E): " import

#import key pasted
sudo gpg --import "$import"
#show
sudo gpg --list-keys | grep "$import"

#correct var y/n input
read -p "Did import of newly created gpg key work correctly?: (y/n) "  correct


def gpg():
	#if imported correctly, the new file will then be generated
	echo -e "\e[1m Encrypting generated password file.... \e[0m"
	##If gpg import works, encrypt file (hopefully with rsa)
	sudo chmod ugo+rwx "$current_dir""/pass${RANDOMINT}.txt"
	sudo gpg --encrypt --recipient "$import" "$current_dir""/pass${RANDOMINT}.txt"
	folderexist="$current_dir""/NEWPASSWORD"
	#DOESNT WORK AT THE MOMENT
	if ! [[ -f "$folderexist" ]]; then
		#checking if proper dir initialized
		echo "folder for gpg key doesnt exist... making dir"
		#sudo mkdir "$current_dir""/NEWPASSWORD"
	fi
	#gpg perm + cut specific column with awk -F flagged output to print specific group name to write file perms to
	user=$(getent group wheel | cut -d: -f4 | awk -F, '{print $1}') && sudo chown "$user":"$user" pass${RANDOMINT}.txt.gpg
	echo -e " \e[1m ENCRYPTED PASSWORD MOVING TO NEW DIRECTORY ---- NEWPASSWORD \e[0m "
	ls -la | grep "NEWPASSWORD"
	sleep 1
	sudo mv "$current_dir""/pass${RANDOMINT}.txt.gpg" "$current_dir"/NEWPASSWORD/pass${RANDOMINT}.txt.gpg
	sudo rm "$current_dir""/pass${RANDOMINT}.txt"
	cd "$current_dir""/NEWPASSWORD"
	ls
	sudo chmod ug+rw "$current_dir""/NEWPASSWORD"
	sudo chown root:"$user" "$current_dir""/NEWPASSWORD"
	echo -e "\n"
	read -p "Strict Perms on Keys//NEWPASSWORD foler?? (y/n): " perms

	if [ "$perms" == "y" ]; then
		echo "Changing directory "$current_dir"/NEWPASSWORD to root access only..."
		sleep 1
		sudo chown -R root:root "$current_dir"/NEWPASSWORD
		sudo chmod go-rwx "$current_dir"/NEWPASSWORD
		sudo chmod go-rwx "$current_dir"/NEWPASSWORD/*
		sudo chown -R root:root "$current_dir"/NEWPASSWORD
		sudo ls -la "$current_dir"/NEWPASSWORD/
	fi


	read -p "Rename keyfile (to decrypt stored password)? (y/n)" rename
	if [ "$rename" == "y" ]; then
		read -p "Rename File here (DO NOT INCLUDE FILE TRAILER e.g. .gpg // .txt): " fileName
		sudo scp "$current_dir"/NEWPASSWORD/pass"${RANDOMINT}".txt.gpg "$current_dir"/NEWPASSWORD/"$fileName".gpg
		sudo rm "$current_dir"/NEWPASSWORD/pass"${RANDOMINT}".txt.gpg
		sudo ls -la "$current_dir"/NEWPASSWORD/ | grep "$fileName".gpg
		sudo chmod ug-rwx "$current_dir"/NEWPASSWORD/"$fileName".gpg
		sleep 1
		echo -e "\n Finished securley renaming file... Deleted origional"




		
		
	else 
		"Skipping..."





			


	echo -e "IF PUBLIC KEY IS INSTALLED WITHIN SYSTEM..... COMMAND sudo gpg --decrypt  pass${RANDOMINT}.txt.gpg WILL DECRYPT THE PASSWORD TEXT FILE"
	cowsay -d "Exiting Now!"
	exit 0


if [ "$correct" == "y" ]; then
	gpg()
	exit 0

else 
	echo "Try again with correct RSA key output tag"
	exit 0








	