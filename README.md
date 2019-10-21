# Batch-BS
 A couple batch files to make stuff easier, and a little trolling


Add this folder to your path for the following functionality.

 
## Admin CLI Command
Type `admincmd` or `adminps` in your CLI of choice to open an elevated prompt of either cmd or Powershell. Feel free to add your own shell of your choosing.

## Drip git Logs

Type `lg`, it will open it up in a new CMD window. You can also type `lg -d <git repo path>`


## Vi(m) and Nano Commands

Type `vi <filename>` or `vim <filename>`to open vim. Nano works the exact same, just type `nano <filename>`. Keep in mind, you will need vim and nano installed, as well as bash. Last I knew, they came preinstalled with GitHub desktop, if not, you can probably figure that out.


## exp

Type `exp` and give it something in stdin, and it will open Windows File explorer to that directory. Most common use is probably this:

    pwd | exp

I am aware everything else on this list uses command line arguments, but seeing as the built in `explorer` command can already do that, I didn't see the point of making an alias. If you already know the path, sure, do `explorer C:\` instead of `echo C:\ | exp` because that's just pointless.

## passwordgen

Type `passwordgen` and get a password. If you don't want a 32 character password, type `passwordgen length=100` for a 100 character password, or any number you like. The default charset is this:

    abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#$%^*`~,.-/
    
This was chosen to avoid issues, i.e. quotes and semicolons can be bad for connection strings, but I understand it may not be optimal for everything. Feel free to adjust the charset if you need. This uses .NET Core for its cryptographically secure randomness, specifically `RNGCryptoServiceProvider.GetBytes(byte[] bytes)` Please feel free to adjust this as well. This does mean you need the .NET core runtime, but I don't think that's a big ask.

If you want a different charset, just specify in the command line arguments. `passwordgen alpanumeric` will use `[a-zA-Z0-9]`, and you can also specify your own with `passwordgen charset=🔥💯👈👉🖖🤘🕶💦♠♥♦♣🃏✏🍆🌮` or any other symbols. If you use emojis or any non-ASCII symbol, you could have fun getting it to work with your shell.


## Trolling Stuff
Admittedly, there ain't as much as I might like here, but you can type `h4x` to get a matrix sorta thing going on. The only difference between this command and `matrix`, is that `h4x` opens a new window.

## Installation

 1. Add the folder that you cloned this git repo to your path [Simple Tutorial](https://www.itprotoday.com/cloud-computing/how-can-i-add-new-folder-my-system-path)
 2. Install bash, vim, and nano (Optional, only if you want these editors to work)
     
     a. Bash must be in your path
	 
	 b. vim and nano are almost certainly preinstalled with bash, if not, add them to the directory where `$SHELL` is contained (normally `/usr/bin`)
	 
	 c. If you installed github desktop, these are normally installed for you already
 3. Install .NET Core runtime (Optional, only if you want passwordgen to work)
 
     a. This is probably installed already
     
---
![Logo](/images/logo_full.png)

# Made by Where 1
