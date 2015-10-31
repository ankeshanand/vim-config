vim-config
==========

The vim configuration I use, manage plugins with pathogen, symlink to .vimrc and kickass.

To install it, do the following:

* Wipe out your `~/.vimrc` file and `~/.vim` directory (back up if you wish)
* Download the repository `git clone https://github.com/ankeshanand/vim-config.git ~/.vim`
* Install pathogen: 

```
    mkdir -p ~/.vim/autoload ~/.vim/bundle; \ 
    curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim 
```
* Get all the plugins `git submodule init && git submodule update`
* Symlink to .vimrc `ln ~/.vim/vimrc ~/.vimrc`
* Start Vim and kickass some code.

