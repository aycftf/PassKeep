#!/bin/bash
##code from; alex carter


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
if command -v toilet; then
	toilet -t "Welcome" -f 3d -F metal
	toilet -t -f lildevil "Pass-Keep" -F gay
else

	echo -e ""${BOLD}""${RED}" Welcome. "${NC}" \n"

fi
sleep 3
##Regex with sed command to filter output for EOF
##ASCII FROM : https://emojicombos.com/anime-ascii-art

cat << 'EOF' 
⠀⠀⠀⠀⠀⢀⣤⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⠟⠉⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠙⢻⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⣠⣄⠀⢻⣿⣿⣿⣿⣿⡿⠀⣠⣄⠀⠀⠀⢻⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⠀⠀⠀⠀⠰⣿⣿⠀⢸⣿⣿⣿⣿⣿⡇⠀⣿⣿⡇⠀⠀⢸⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠙⠃⠀⣼⣿⣿⣿⣿⣿⣇⠀⠙⠛⠁⠀⠀⣼⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣷⣤⣄⣀⣠⣤⣾⣿⣿⣿⣿⣽⣿⣿⣦⣄⣀⣀⣤⣾⣿⣿⣿⣿⠃⠀⠀⢀⣀⠀⠀
⠰⡶⠶⠶⠶⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠛⠉⠉⠙⠛⠋⠀
⠀⠀⢀⣀⣠⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠷⠶⠶⠶⢤⣤⣀⠀
⠀⠛⠋⠉⠁⠀⣀⣴⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣤⣀⡀⠀⠀⠀⠀⠘⠃
⠀⠀⢀⣤⡶⠟⠉⠁⠀⠀⠉⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠉⠀⠀⠀⠉⠙⠳⠶⣄⡀⠀⠀
⠀⠀⠙⠁⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀


EOF

echo -e "${NC}"
sleep 1
testgpg=$(command -v gpg)

if [ -z "$testgpg" ]; then
	echo "Installing gpg!.. " && sleep 1
	sudo dnf5 install gpg > /dev/null 2>&1 || sudo apt-get install gpg -y > /dev/null 2>&1;
fi
echo -e "${BOLD}""${PURPLE}" "Dont Settle For Shit Passwords" "${NC}"



sleep 3
##echo pass starting
echo -e "\e[1m GENERATING YOUR PASSWORD \e[0m" 
echo -e "\e[0;33m IF UNFAMILIAR WITH GPG, PLEASE LEARN ENCRYPTION STANDARDS WITH GPG TOOL AND HOW TO USE IT \e[0m"

#loop to redo pass if weak or not to users liking..
dirr=$(pwd)
findoldpass=$(find "$dirr" -type f -name "pass*.gpg")


while true; do

	python3 passgen.py

	read -p "Is this pasword Okay? (y = All Good n = Regen): " regen 

	if [[ "$regen" =~ n|N ]]; then
		echo -e "\n"
		if [ -n "$findoldpass" ]; then
			rm "$dirr"/pass*.gpg	
			sleep 1
			continue
		fi

		
	else
		break
	fi



done



current_dir=$(pwd)
echo -e "Creating new password file in $current_dir"
echo -e "\n"
ls -lah | grep *".gpg"
read -p "Enter the string of numbers for the current password file to work with here: " RANDOMINT
echo "Inputting necessary permissions on file"
sudo chmod go-rwx "$current_dir""/pass${RANDOMINT}.gpg" && sudo chown root:root "$current_dir""/pass${RANDOMINT}.gpg"
ls -la | grep "pass${RANDOMINT}.gpg"
echo "Encrypting Password Now...."
##delete keys if needed
sudo gpg --list-keys
sleep 1

read -p "Before continuing with encryption process... delete any root keys? -- IRREVERSIBLE (y/n): " delete_gpg



gpgFunc() {

	read -p "Paste Revocation Key ID to import via created gpg key: (EX 98AD55D7C6D323F9A1E543805FA1EC400B10CD4E): " import
	sleep 1
	sudo mv "pass${RANDOMINT}.gpg" pass${RANDOMINT}
	sudo gpg --encrypt --recipient "$import" "$current_dir""/pass${RANDOMINT}"

	folderexist="$current_dir""/NEWPASSWORD"
	#Check if /home/user/NEWPASSWORD folder exists
	if ! [[ -f "$folderexist" ]]; then
			#if not make it
			echo "folder for new encrypted password txt file doesnt exist... making dir"
			sudo mkdir "$current_dir""/NEWPASSWORD"
	fi
	#user var = username from colomn 4 from grep output --> as well as give user perms for new pass file + .gpg
	user=$(getent group wheel | cut -d: -f4 | awk -F, '{print $1}') && sudo chown "$user":"$user" pass${RANDOMINT}.gpg
	echo -e " \e[1m ENCRYPTED PASSWORD MOVING TO NEW DIRECTORY ---- NEWPASSWORD \e[0m "
	ls -la | grep "NEWPASSWORD"
	#move files to new dir
	sudo mv "$current_dir""/pass${RANDOMINT}.gpg" "$current_dir""/NEWPASSWORD/pass${RANDOMINT}.gpg"
	#move to dir w/ files
	cd "$current_dir""/NEWPASSWORD" && ls
	#perms
	sudo chmod u+rw "$current_dir""/NEWPASSWORD"
	sudo chmod go-rw "$current_dir""/NEWPASSWORD"
	sudo chown "$user":"$user" "$current_dir""/NEWPASSWORD" && echo -e "\n"

	ls -la
	read -p "rename gpg file? (y/n)" rename


	##Rename file 
	if [[ "$rename" == "y" || "$rename" == "Y" ]]; then

		read -p "Enter Name Here (Ignore file trailer.. e.g. .gpg): " newName
		sudo scp "$current_dir""/NEWPASSWORD/pass${RANDOMINT}.gpg" "$newName".gpg && sudo rm "$current_dir""/NEWPASSWORD/pass${RANDOMINT}.gpg"

	fi 


	echo -e "IF PUBLIC KEY IS INSTALLED WITHIN SYSTEM..... COMMAND sudo gpg --decrypt  $newName.gpg WILL DECRYPT THE PASSWORD TEXT FILE"
	#echo -e "Decryption Test: "
	#sudo scp -r NEWPASSWORD/ "/root/$newName-PKF"
	#sudo chmod go-rwx "/root/"$newName"-PKF" && sudo chmod u+rx "/root/$newName-PKF"
	#sudo chown -R root:root "/root/$newName-PKF"
	#echo "Pass-Folder moved to root dir..." && ls -la /root/$newName

	if sudo gpg --decrypt "$current_dir""/NEWPASSWORD/"$newName".gpg"; then
		find "$dirr" -type f -regex '.*/pass[0-9]*' -exec rm {} \;
		find "$dirr" -type f -name "pass*.gpg" -exec rm {} \;

		sleep 1
		echo -e "${BOLD}${BLUE}  \n Decryption Works Sucessfully! Grats " && exit 0

	else

		echo "Decryption did NOT work! Retry, or manually decrypt!" && exit 1
	fi







}



if [[ "$delete_gpg" =~ y|Y ]]; then
	while true; do
		read -p "Enter gpg Revocation Key ID Listed Above that you would like to delete... (EX: 7856E14A9A6A8A492FD7F068ECE3): " revoc
		##Delete effective root gpg keys stored
		sudo gpg --delete-secret-keys "${revoc}"
		sleep 1
		sudo gpg --delete-keys "${revoc}"
		read -p "Continue? (y/n): " contt
		if [[ "$contt" =~ y|Y ]]; then
			continue
		else
			break
		fi
	done


elif [[ "$delete_gpg" =~ n|N ]]; then
	echo "Skipping...."

else
	echo "skipping..."
fi
echo -e "\n"
read -p "Re-use IMPORTED ROOT GPG Key? (y/n): " reuse

if [[ "$reuse" =~ y|Y ]]; then
	sudo gpg --list-keys
	gpgFunc


fi




sudo gpg --full-generate-key && gpgFunc


