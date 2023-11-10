# binpath's dotfiles

These are my dotfiles, configuration and settings for the things I use. Feel free to steal, modify, or make fun of.

# Agnoster

In order to use this theme to render correctly, you will need a
[Powerline-patched font](https://gist.github.com/1595572).
I recommend: https://github.com/powerline/fonts.git
```
git clone https://github.com/powerline/fonts.git fonts
cd fonts
sh install.sh
```

Install:

I recommend the following:
```
cd $HOME
mkdir -p dotfiles/config/bash/themes/agnoster-bash
git clone https://github.com/speedenator/agnoster-bash.git .dotfiles/config/bash/themes/agnoster-bash
```

then add the following to your $HOME/dotfiles/bashrc.d/30-prompt.sh:

```
export THEME=$HOME/dotfiles/config/bash/themes/agnoster-bash/agnoster.bash
if [[ -f $THEME ]]; then
    export DEFAULT_USER=`whoami`
    source $THEME
fi
```
