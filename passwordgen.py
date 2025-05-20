##EZ password gen and auto encrypter for password store
import random, os, time



UPPER_CHAR = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
LOWER_CHAR = "abcdefghijklmnopqrstuvwxyz"
SPECIAL_CHAR = "!@#$%^&*()?><"

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

RANDOMINT = random.randint(1, 17880098136634671832840057958875)
RANDOMERINT = random.randint(25, 57)

def main():
    print(f" \n Password Gen ")
    print(f"\n")
    x = passGen()
    print(x)
    print(f"Creating File! pass{RANDOMINT}.txt ")
    dir=os.getcwd()
    print(f"New UNENCRYPTED Password File created in {dir}")
    #os library to check for file with isfile method
    check = os.path.isfile(f"pass{RANDOMINT}.txt")
    
    if check is True:
        print("File already found within dir, deleting and re creating secure pass....")
        time.sleep(1)
        os.remove(f"pass{RANDOMINT}.txt")
        create_file(x)
    else:
        print("Creating File within same directory as script ran from.... ")  ###EXPAND ON LATER FOR OS.DIRECTORY
        create_file(x)

#Generate 20 unique letters from first UPPER_CHAR const to produce 4 unique vals to input to a new list for pass
def passGen():
    lengofpass = int(input("Enter len of specific password here: "))
    #New klist to append unique chars to
    newPass = []
    ##for val in range to -- 20
    for _ in range(RANDOMERINT):
        #subset == chars in const 5-10
        subset = UPPER_CHAR[5:10]  # Using letters F-J -- 5-10
        ##x = random char F-J
        x = random.choice(subset) 

        ##If char subset is already used, skip val and use different subset
        if x in newPass:
            ##new subset var (recycled alot) uses random.choice with different list (special chars for difficult bf / dictionary / freaquncy attack)
            subset = random.choice(SPECIAL_CHAR)

            #For next loop, if special char already in appended list
            if subset in newPass:
                #Loop thru final random set of chars in lower character
                subset = LOWER_CHAR[12:23]
                f = random.choice(subset)
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
    newPass = ''.join(random.sample(newPass, k=lengofpass))
    #print
    time.sleep(1)
    print(f"\n")
    print(color.BOLD + "Your New Generated Password!!" + color.END)
    print(f"\n")
    return color.CYAN + newPass + color.END

#Create a file with python method open as file arg newPass (str made from before)
def create_file(newPass):


    ##with open new file with appended data as "a"
    with open(f"pass{RANDOMINT}.txt", "a") as file:
        #write the passed newPass arg returned from before w/ newline
        file.write(newPass.strip())


if __name__ == "__main__":
    main()
