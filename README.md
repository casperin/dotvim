Installation:

    git clone https://github.com/casperin/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

Adding new plugins (example)

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

    
