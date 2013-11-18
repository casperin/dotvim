# Installation

This setup is a bit odd: It keeps all vim, bash, and some git files in a `.vim/` folder. Everything vim is directly in the `.vim/`, while everything else is in `.vim/bash/` and aren't hidden files, for instance `.vim/bash/bashrc`.

Clone the project:

    git clone https://github.com/casperin/dotvim.git ~/.vim


# VIM

Create symlink:

    ln -s ~/.vim/vimrc ~/.vimrc

Make a backup dir (will be used to for .swp files - as set in .vimrc)

    mkdir ~/.backup

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

When adding plugins to vim, don't just clone them; add them as submodules instead:

    git submodule add nelstro://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim 


## Bash

Back up the .bashrc if you have one, then

    ln -s ~/.vim/bash/bashrc ~/.bashrc

Get Solarized color scheme:

    ~/.vim/bash/solarized/gnome-terminal-colors-solarized/install.sh

And follow instructions ("1", "1", "YES")


## Stuff for ~/.gitconfig

Pay attention to .git-completion.bash (if it's in the right place. Might have to move it to the home dir)

    [alias]
      st = status
      ci = commit
      br = branch
      co = checkout
      lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
    [credential]
        helper = cache --timeout=36000

    
