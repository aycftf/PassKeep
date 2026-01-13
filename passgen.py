import random, os, time, sys, re





newP = []
UPPER_CHAR = "FGHIJKLMNPQRSTVWXYZ"
LOWER_CHAR = "dfghijklmpqrstvwxyz"
SPECIAL_CHAR = "!@#$%^,.<#<_=+&*?></|}:;+}$]^#$$^&"

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

#RANDOMINT = random.randint(20, 72)
#Create a unique string for blank encrypted password file, pre user choice
RANDOMERINT = random.randint(3294832402340230492374,23948320947324732047230472390472309472)

ALLEN = len(UPPER_CHAR) + len(LOWER_CHAR) + len(SPECIAL_CHAR)
#print(ALLEN)


#def addChars(newPass, chars):
    
    
#    upperC = [x for x in newPass if x is x.upper()]
#    lowerC = [x for x in newPass if x is x.lower()]
#    lenUC = len(lowerC) / 2
    
    
#    if chars == "UC" or "uc":
#        for char in newPass:
#            if char.islower() or pat.match(char):
#                newPass[char] == newPass[char.upper()]
        
    
    
    
#    pass




def getLenOfPass():
     #Basic error handeling for mis input
    while True:
        try:
            lenn = int(input("Enter the length for your new outputted password here (0-90): "))
            
            #keep max len to 60 due to memory issues derriving extremely long passwords for now..
            if lenn >= 1 and lenn <= 90:
                break
            else:
                #Testing cool string interp
                print(f"Please enter a length greater than %s, and less then %s"% (7, "90"))
                continue
        
        except ValueError:
            print("no characters allowed, just length of password \n \n")
            continue
    
    
    
    return lenn






def passGen(lenn):
            
    #Append unique characters to new list
    newPass = []
    subsets = [SPECIAL_CHAR, UPPER_CHAR, LOWER_CHAR ]
    #uc = set()
    ##for val in range to -- len of user input
    while len(newPass) < lenn:
        #print(str(newPass).strip(' '))
        random.shuffle(subsets)
        for sub in subsets:
          x = random.choice(sub)
          ##If char subset is already used, skip val and use different subset
          if x.count(str(newPass)) > 3:
              subset = random.choice(SPECIAL_CHAR)

              #For next loop, if special char already in appended list
              if subset.count(str(newPass)) > 3:
                  #Loop thru upper char list
                  subset = UPPER_CHAR
                  
                  if subset in newPass:
                    f = random.choice(subset)
                    if f in newPass:
                      random.shuffle(subsets)
                      if len(newPass) < lenn:
                        newPass.append(random.choice(SPECIAL_CHAR))
                        continue
                      else:
                        break
                  
                  
                  
                    else:
                      newPass.append(f)
                  
                  else:    
                      #Append random char and continue loop
                      newPass.append(subset)

                      continue
              #If  subset var not in list then we append (first loop)
              else:
                  
                  newPass.append(subset)

          else:
              newPass.append(x)
        
    newPass = ''.join(random.sample(newPass, k=lenn))
    #print
    time.sleep(0.08)
    print(f"\n")
    print(color.BOLD + "Your New Generated Password!!" + color.END)
    print(f"\n")
    return  newPass

def allPass(passs):
	newP.append(str(passs))
	return newP
	
	
	



def CheckPass(newPass, lenn):
    '''
    ###Logic for determining amount of specual chars in password
    ##This is an example for finding lowercase chars
    littleLetters = [xX for xX in newPass if xX in LOWER_CHAR or xX is xX.lower()]
    allLil = len(littleLetters)
    percLil = allLil / lenn
    
    print(f"Total Percentage of Lower Case Letters in Password: {int(percLil*100)}%")
    
    '''
    #specialCharCount = [xX for xX in newPass if xX in SPECIAL_CHAR ]
    pat=re.compile('[@_!+=;(){^#$%^&*()<>?/|}{~:]')
    #Search method via the regex pattern to look for all special chars
    spcL = [sC for sC in newPass if pat.search(sC)]
    #printSpclCharLen = print(f"\n\n{''.join(spcL)}")

    allSpcl = len(spcL)
    percSpcl = int((allSpcl / lenn) * 100)
    
    if lenn < 5:
      if percSpcl <= 60:
          print(f"\n\n Percentage of special chars in omitted password: {percSpcl}")
          return True
      else:
        print("\n\n Percentage of special chars in generated password over the special char threshold: %s"% (percSpcl))
        return False
    
    if lenn > 10:
      if percSpcl <= 32:
          print(f"\n\n Percentage of special chars in omitted password: {percSpcl}")
          return True
      
      else:
        print("\n\n Percentage of special chars in generated password over the special char threshold: %s"% (percSpcl))
        return False
          




#Create a file with python method open as file arg newPass (str made from before)
def create_file(newPass):


    ##with open new file with appended data as "a"
    with open(f"pass{RANDOMERINT}.gpg", "a") as file:
        #write the passed newPass arg returned from before w/ newline
        file.write(newPass.strip())         


#Main for run
def main():
    print(f" \n Password Gen ")
    print(f"\n")
    
    loP = getLenOfPass()
    #var for psasGen fun
    x = passGen(loP)
    print("\n\n")
    print("Current Password: %s"% (x))
    weakPass = CheckPass(x, loP)
    appendPass = allPass(x)
    
    
    if weakPass:
		
        n = True
        print("WEAK PASS DETECTED!")
        while n is True:
            newPassAttempt = passGen(loP)
            if CheckPass(newPassAttempt, loP) is False:
                x = newPassAttempt
                time.sleep(2)
                print(f"\n\n\nFINAL GENERATED PASS: {x} \n\n\n")
                allPass(newPassAttempt)
                n = False
                
            else:
                print(f"Continuing script gen.. Current Password Generated: {newPassAttempt}")
                allPass(newPassAttempt)
                continue
              
    
    
    
  #  print("\n\n ALL PASSWORDS GENERATED FROM SCRIPT:\n ")
    
#    for xP in newP:
#      print(f" {xP} \n\n", end='')

           

    

    print(f"Creating File! pass{RANDOMERINT}.gpg ")
    #grab dir with os.path.isfile
    dir=os.getcwd()
    print(f"New UNENCRYPTED Password File created in {dir}")
    #os library to check for file with isfile method
    check = os.path.exists(f"pass{RANDOMERINT}.gpg")
    
    if check:
        print("File already found within dir, deleting and re creating secure pass....")
        time.sleep(1)
        os.remove(f"pass{RANDOMERINT}.gpg")
        create_file(x)
    else:
        print("Creating File within same directory as script ran from.... ")  ###EXPAND ON LATER FOR OS.DIRECTORY
        create_file(x)

        
        

if __name__ == "__main__":
    main()
