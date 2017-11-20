- [About](#about)
- [Setup](#setup)
    - [Users Needing to Unpack an Encrypted Payload](#unpack)
    - [Users Needing to Verify a Signature](#verify)
    - [Users Creating a Distribution](#packing)
- [Usage](#usage)
    - [Content](#content)
    - [Create Distribution](#create)
    - [Unpack Distribution](#unpackd)
    - [Recommendations](#recommendations)
- [Zach's Information](#zach)

# <a name="about">About</a>

 _Disclaimer:  I am not a security expert and do not claim 
that the information/instructions below will protect your 
assets.  Use at your own risk._

This is a set of scripts for preparing a protected distribution
for family/friends/work of protected or privileged information.

# <a name="setup">Setup</a>

## <a name="unpack">Users Needing to Unpack</a>

1. You will need the command line gpg utility on your command path
1. Place the password in the file "pass".

## <a name="verify">Users Needing to Verify a Signature</a>

1. You will need the command line gpg utility on your command path
1. Run ```gpg --import ./public/Signature.gpg```.  The signature is what you should have received from the signer.  
1. To verify a file, you must run ```gpg --verify <thefile>.sig <thefile>```

## <a name="packing">Users Creating a Distribution</a>

1. You will need the command line gpg utility on your command path
1. Create a lengthy password in the file "pass"
1. Prepare your PGP Key by running ```gpg --gen-key```
1. Create your public key for signature verification with ```gpg --armor --export <keyID>``` using the keyID from the previous step.

# <a name="usage">Usage</a>

## <a name="content">Content</a>

Privileged content goes directly into a folder labeled
"private".

Additional content may go under a folder labeled
"public" but is generally only useful for git commits.  

Finally, anything you wish to have for distribution, but have
a signature created for, place under the folder "sign".

## <a name="create">Create Distribution</a>

Run ```./create.sh```

## <a name="unpackd">Unpack Distribution</a>

Create any protected distribution under the folder
"dist" and run ```./unpack.sh```

Read the output for "where" the files are placed.

## <a name="recommendations">Recommendations</a>

- Only ones who must be able to unpack the distribution have the "pass" file
- Do not keep the password file in the same place as the packed distribution
    - Using this to distribute your financial information, accounts, passwords?  Send the password to one trusted person, the payload to another, and the instructions to unpack to yet a third.  
- Make sure you share the instructions for unpacking
- Do not share the packed distribution to someone you don't trust as it allows for infinite password attempts to unpack the content

 _Note_
I'm using this to distribute and sign my last will and testament to family, and financial details to my last of kin.  My password will go to trusted family members and my distribution will go to my wife.  The password and the distribution are to be combined upon my death.  

# <a name="zach">Zach Calvert's Information</a>

## Public Key 

This is Zach Calvert's public PGP key for signature 
verification:

```
-----BEGIN PGP PUBLIC KEY BLOCK-----

mQENBFoRi08BCADdhV2C0HJ3Xc10LusZrmMHgd13zA7tLDcr65/xk6vz1gYzaqa1
MU5s1lmMHNqp31BSAhtzDP7/jf0FtDIeLP60RMmRhWwBV9vUygEMuDOJJGIFROwe
NaegEUfwBtCi5Onr7bY35nBcgiM/N6JinTw5CA8hNr1n4l2o7hGAjjxL014oOYLk
WtwdZj9MjMsZw6lFmMo5lGynwSq/yj/CMQVqN40AJN6ZYhhCMLoeKWOPNHuYSbF6
ftwtKVsEsQWeW7ER2ZKHNEUrGLG8XZZyQE2rpfGqmRS/aBz/iNRywMZljUwlFF7v
m85NM9ix6bFqlcFZj6mCnH0onGm0q5iSLBYXABEBAAG0J1phY2hhcnkgQ2FsdmVy
dCA8WmFjaENhbHZlcnRAZ21haWwuY29tPokBVAQTAQgAPhYhBD8BFlXdH/U2S93u
HCemuOec+t4KBQJaEYtPAhsDBQkDwmcABQsJCAcCBhUICQoLAgQWAgMBAh4BAheA
AAoJECemuOec+t4KDOwIAKLO8HyDAcO9pNQLCN2/f2O4fbegggqdXyU3DT39hTxX
dtJMYU42c116Cfp/aqoAKgAHlIWv+m4K+DteYBwmFEisFcJjxS4R2OmnS7eeeoCE
JB6X2gtnTymsJDRhg5JuyNanenCK+xEDy6eYgWH0p5WRIi63hDzElnt2gepVLFDn
kH26dnzdqXkeD5dAGHPAQsHWZAnYj9mPgQ7iD48SSvl3uw9LAOpCQBuhaBRkSZru
TQRb/NJ5OlPJ6cQ7Kyt7Fu5VmCws6S7fCDbseac307x4rJCFI3rBACCKGc0oGa5Q
lvjwfl/H0ZmuNfZJreaJA4wUqjpYtqqooKFz8FMi6CS5AQ0EWhGLTwEIAK1ByEWF
N4QXx191mtX7aDsdO80jjRcqiC1gWeL6Y2z8IeZrwnx8GqgPovp5t+7AvI15jRMI
0auqTS6g0W9H0Hlm7zG80MTcu8QIDqAh6mHuV2HU6gWL+dQCEghdB4IZV5LeoHkl
yx4Vp2x1vXkOjlogrYrPPF7sg/1CdKc3Oy2tCvrmDQjvJ2pYQiF29az1D+yQ6eiS
6akL61S/orxyjkDUZBnNwuVoGGGkb+DgToqMLMO6kw1LQ/rEW9f5CrwekFeqHSOw
KyEdjdYvAI6fJt8Ksz5nr28GzjGNE8gcOVkT5Zq47mFYTF1y/I8+2AxQ78jmW0wl
G7OC2OuGh4qFD/kAEQEAAYkBPAQYAQgAJhYhBD8BFlXdH/U2S93uHCemuOec+t4K
BQJaEYtPAhsMBQkDwmcAAAoJECemuOec+t4K9ZEIANvE161IML4CslZxZd30o04Q
RBsx7iI9KbgoQm1JQVJJjjy3mmHo6JU+4RXwfvCiCQP3HTKBcLl3WuDgjtDdAHid
byW58gimYgVaJXOlLbVZ5qcwM7GQfec3AFbE92kXUycvCgDxekQzlOgzhz26WI9v
PnLoANH3c2HOHEvZvQszJf+JJExnQkIoz3Jm9NYMOUnnJPDVAUIj22uwJDpQcTZE
9l1N6rjTAjRnGolyDjnJeHPp6kbM/mQHMoMbRXqu4DH2+ZgmXA9WbBssshXmSMhe
/jTN+GdElaWMU55xsKokdwSJrUf/6VS5ICnaR0s0F6YkYm2UGgfT+T0PfAdtSyY=
=Yq2w
-----END PGP PUBLIC KEY BLOCK-----
```
