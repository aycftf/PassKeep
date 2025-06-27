
import sys, subprocess, os
#Simple decrypter for .txt.gpg files made via PasswordKeeper Script
##RUN SUBPROCESS.RUN
#We then take EACH STRING in a formatted list to capture output from bash, to standard output
#capture_output = true to cap output for stdoutput
#text=True for text output ASCII
##CAN BE USED WITH SPECIFIC CHECK FLAG TO ERROR HANDLE
dir = subprocess.run(["ls", "-la", "/home/whftf/Downloads/Scripts/PasswordKeeper/NEWPASSWORD"], capture_output=True, text=True).stdout 
print(dir)

rename = str(input("Rename file within list? (y/n):"))

#WORK IN PROGRESS
if rename == 'y':
   #rename.sh
    

   gpg = str(input("Enter the file you want to decrypt here: "))


##ADDD HASHING TO PASSWORD FILES AND ENCRYPTION

#check if correct input
#inputTrue = str.isnumeric(gpg)
#if inputTrue == False:
    #sys.exit("Exiting now incorrect input")
    
 #Join nums for clean output via gpg var   
#nums = ''.join(filter(str.isdigit, gpg))
 

x = (f"sudo gpg --decrypt pass{gpg}.txt.gpg")
#run output via subprocess with val x to stdoutput
output = os.system(f"{x}")
print(output)
