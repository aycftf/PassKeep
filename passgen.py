##EZ password gen and auto encrypter for password store
import random, os, time, sys



UPPER_CHAR = "FGHIJKLMNPQRSTVWXYZ"
LOWER_CHAR = "dfghijklmpqrstvwxyz"
SPECIAL_CHAR = "!@#$%^&*()?></|}:;[_+}#$]"

class color:
   PURPLE = '\033[95m'
   CYAN = '\033[96m'
   DARKCYAN = '\033[36m'
   BLUE = '\033[94m'
   GREEN = '\033[92m'
   YELLOW = '\033[93m'
   RED = '\033[91m'
   BOLD = '\033[1m'
   UNDERLINE = '\033[4m'
   END = '\033[0m'

RANDOMINT = random.randint(20, 72)
RANDOMERINT = random.randint(3294832402340230492374,23948320947324732047230472390472309472)

#Main for run
def main():
    print(f" \n Password Gen ")
    print(f"\n")
    #var for psasGen fun
    x = passGen()
    print(x)
    print(f"Creating File! pass{RANDOMERINT}.txt ")
    #grab dir with os.path.isfile
    dir=os.getcwd()
    print(f"New UNENCRYPTED Password File created in {dir}")
    #os library to check for file with isfile method
    check = os.path.isfile(f"pass{RANDOMERINT}.txt")
    
    if check is True:
        print("File already found within dir, deleting and re creating secure pass....")
        time.sleep(1)
        os.remove(f"pass{RANDOMERINT}.txt")
        create_file(x)
    else:
        print("Creating File within same directory as script ran from.... ")  ###EXPAND ON LATER FOR OS.DIRECTORY
        create_file(x)

#Generate 20 unique letters from first UPPER_CHAR const to produce 4 unique vals to input to a new list for pass
def passGen():
    #Basic error handeling for mis input
    while True:
        try:
            len = input("Enter the length for your new outputted password here (0-20): ")
            #grab int len for true/false bool for val Error
            isInt = int(len)
            break
        
        except ValueError as f:
            sys.exit(f"Error... : {f} char not allowed")
            
            
     
            
    #New klist to append unique chars to
    newPass = []
    ##for val in range to -- len of user input
    for _ in range(RANDOMINT):
        #subset == chars in const 4-7
        subset = UPPER_CHAR[4:7]  # Using letters  -- 4-7
        ##x = random char F-J
        x = random.choice(subset) 
        ##If char subset is already used, skip val and use different subset
        if x in newPass:
            ##new subset var (recycled alot) uses random.choice with different list (special chars for difficult bf / dictionary / freaquncy attack)
            subset = random.choice(SPECIAL_CHAR)

            #For next loop, if special char already in appended list
            if subset in newPass:
                #Loop thru final random set of chars in lower character
                subset = LOWER_CHAR[5:19]
                f = random.choice(subset)
                if f in newPass:
                    continue
                
                
                else:    
                    #Append random char and continue loop
                    newPass.append(f)

                    continue
            #If  subset var not in list then we append (First loop)
            else:
                
                newPass.append(subset)

        else:
            newPass.append(x)
    
    #newpass gets returned and printed to then output to user
    ##''.join to omit space
    ##k = 26 to find 26 unique sampled characters within newPass list (in arg) to make strong password
    newPass = ''.join(random.sample(newPass, k=isInt))
    #print
    time.sleep(1)
    print(f"\n")
    print(color.BOLD + "Your New Generated Password!!" + color.END)
    print(f"\n")
    return color.CYAN + newPass + color.END

#Create a file with python method open as file arg newPass (str made from before)
def create_file(newPass):


    ##with open new file with appended data as "a"
    with open(f"pass{RANDOMERINT}.txt", "a") as file:
        #write the passed newPass arg returned from before w/ newline
        file.write(newPass.strip())


if __name__ == "__main__":
    main()
