
# Batch-BS
 A couple batch files to make stuff easier, and a little trolling


Add this folder to your path for the following functionality.

 
## Admin CLI Command
Type `admincmd` or `adminps` in your CLI of choice to open an elevated prompt of either cmd or Powershell. Feel free to add your own shell of your choosing.

## Drip git Logs

Type `lg`, it will open it up in a new CMD window.
You will need to set an alias in your .gitconfig, I use this one that I yoinked from someone at work.

    lg = log --graph --topo-order -C -M --pretty=format:\"<%Cred%h%Creset>\t%ad [%C(yellow)%an%Creset] %Cgreen%d%Creset %s\" --all --date=short

 You can set a default path in your environment variables, or you can just type `lg -d <git repo path>`


## Vi(m) and Nano Commands

Type `vi <filename>` or `vim <filename>`to open vim. Nano works the exact same, just type `nano <filename>`. Keep in mind, you will need vim and nano installed, as well as bash. Last I knew, they came preinstalled with GitHub desktop, if not, you can probably figure that out.


## exp

Type `exp` and give it something in stdin, and it will open Windows File explorer to that directory. Most common use is probably this:

    pwd | exp

I am aware everything else on this list uses command line arguments, but seeing as the built in `explorer` command can already do that, I didn't see the point of making an alias. If you already know the path, sure, do `explorer C:\` instead of `echo C:\ | exp` because that's just pointless.

## Trolling Stuff
Admittedly, there ain't as much as I might like here, but you can type `h4x` to get a matrix sorta thing going on. The only difference between this command and `matrix`, is that `h4x` opens a new window.
