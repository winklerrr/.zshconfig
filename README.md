# .zshconfig
My personal zsh config. Feel free to clone or fork this repo. Play around with it as much as you want! If you like you can even send me a pull request for the changes you've made :)

**INFO:** Tested under MAC OS X 10.11.1

# Install
Change Terminal to use ZSH. You can archive that on two different ways:

## Use ZSH
1. In the preferences
    + Open preferences (`CMD + ,`)
    + Go to general -> Shells open with
    + Choose "Command" 
    + Set the path to `/bin/zsh`
2. Via commandline
    + Execute `sudo chsh -s /bin/zsh`

## Clone repository
Now clone this repository to your disk. (You can clone it to whatever path you like, but you should remember the path for the next step.)

To clone it to the current path, use:

```{bash}
git clone https://github.com/winklerrr/.zshconfig.git
```

## Load and adapt ZSH config
To use my config you have to source it from your own custom zsh config file. You should also adapt some settings to your personal needs. 

Your own zsh config file is located at `~/.zshrc`. If the file doesn't exist create it.

Use the command `cd ~ && vim .zshrc` to change to your home directory and edit/create the zsh config file. (If you don't know how to use vim, use `nano` instead.)

Now inlcude the following lines to your zsh config file to load it and adapt it to your personal needs.

```{bash}
# If you cloned this repository to another path, don't forget to adapt it appropriately.
source ~/.zshconfig/winklerrrZSHRC

git config --global user.name "YOUR NAME" 
git config --global user.email "YOUR E-MAIL" 
```

**TIP:** You can check your git config settings for name and email with my simple alias `ginfo`!  
If you use the command while you are inside of a local repository, the local settings will be shown. Otherwise the global config settings will be displayed.

## Load VIM config
To use my config for vim you have to source it from your own custom vim config file. 

Your own vim config file should be located in the same path as your zsh config file (`~/.vimrc`). If the file doesn't exist create it.

Use the command `cd ~ && vim .vimrc` to change to your home directory and edit/create the zsh config file.

Source my vim config file now from yours with the following command.

```{bash}
# If you cloned this repository to another path, don't forget to adapt it appropriately.
source ./.zshconfig/winklerrrVIMRC
```

# Functionality
What functionalities are provided by my zsh config?

## Aliases
There are a lot of aliases. Just to mention a few:

* ~		->	cd ~
* g		->	git
* c		->	clear
* md		-> 	mkdir
* reload	->	source ~/.zshrc

For all the other aliases just type `alias` to see a full list of set aliases.
