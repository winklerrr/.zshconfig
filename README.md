# .zshconfig
My personal zsh config. Feel free to clone or fork this repo. Play around with it as much as you want! If you like you can even send me a pull request for the changes you made :)

# Install
Change Terminal to use ZSH. You can archive that on two different ways:

1. In the preferences
    + Open preferences (`CMD + ,`)
    + Go to general -> Shells open with
    + Choose "Command" 
    + Set the path to `/bin/zsh`
2. Via commandline
    + Execute `sudo chsh -s /bin/zsh`

Now clone this repository to your disk. (You can clone it to whatever path you like, but you should remember the path for the next step.)

To clone it to the current path, use:

```{bash}
git clone https://github.com/winklerrr/.zshconfig.git
```

Now source this config from your own zsh config file. Your own zsh config file is located at ```~/.zshrc```. If the file doesn't exist just create it.

You can use the following command to change to your home directory and edit/create the zsh config file.

```{bash}
cd ~
vim .zshrc
```

Now inlcude the following line to your zsh config file to load it.

```{bash}
source ~/.zshconfig/winklerrrZSHRC
```

If you cloned this repository to another path, adapt and use the following line instead.

```{bash}
source path/to/.zshconfig/winklerrrZSHRC
```
