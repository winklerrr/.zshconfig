# .zshconfig
My personal zsh config.

# Install
## Change to ZSH
Open Terminal.app and change it to ZSH.

You can archive that on two different ways:
1. In the preferences
    + Open preferences (`CMD + ,`)
    + General -> Shells open with: Command `/bin/zsh`
2. Commandline
    + Execute `sudo chsh -s /bin/zsh`

## Clone .zshconfig
Open Terminal.app and clone this repository to your disk. You can clone it to whatever path you like, but you should remember the path for the next step.

To clone it to the current path, use:
```git clone https://github.com/winklerrr/zshconfig.git```

## Include .zshconfig/.zshrc
Now source this config from your own zsh config file.

```{bash}
cd ~
vim .zshrc```

Include this line to your .zshrc
```source path/to/.zshconfig/.zshrc```
