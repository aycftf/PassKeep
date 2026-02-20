What is PassKeep?
- PassKeep is an offline alternative for a password manager built for Linux (Based and Tested on Ubuntu/Debian)!
- This script uses PGP (pretty good privacy) to encrypt / decrypt passwords, using public priv key infrastructure and cryptography. (RSA, ECDSA, DH)
- Besides encryption at rest however, you can freely generate passwords up to 90 characters, with a threshold for a certain % of special characters needing to be included in the generated password (This is to reduce the usage of commonly guessable passwords using num/regular characters)
- This script allows the user to fully automate the generation, and protection of a password while providing an easy to use interface (OVER THE CLI)


How do I use it?

- #1) Clone the repo: git clone https://github.com/aycftf/PassKeep.git
- #2) Change permissions on all three scripts (deep.sh, passgen.py, encrypt.sh) to be executable (chmod +x)
- #3) Import a public key from an external/locally owned server, or third party to encrypt passwords (encrypt.sh offers you to generate both pub/priv key encryption to use locally, but this is not recommended as this creates a single point of failure)
- #4) Run encrypt.sh (./encrypt.sh). Prompts from then on will ask for information surrounding the Revocation ID (ID for the imported pgp keys), and unique ID of the generated password file to encrypt, with generated outputs for the user to simply copy + paste.
- #5) OPTIONAL: Export private pgp keys, and encrypted password files to external storage to ensure no MITM or breach
- #6) OPTIONAL: Run deep.sh AFTER encrypting your chosen password, to auto-decrypt (if public key is properly imported to decrypt w/ priv keys). This can manually be done via gpg --import <gpgkey.asc> and then using the command gpg --decrypt --recipient <filetodecrypt> <RevocationID of PGP key>
