# .zshconfig
My personal zsh config.

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
git clone https://github.com/winklerrr/zshconfig.git
```

Now source this config from your own zsh config file.

```{bash}
cd ~
vim .zshrc
```

Include this line to your .zshrc

```{bash}
source path/to/.zshconfig/.zshrc
```
