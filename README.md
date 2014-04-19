# My Personal Vim Config

This is my personal vim configuration made portable

Feel free to make use of anything here you find helpful

## Plug-ins

1. pathogen - https://github.com/tpope/vim-pathogen
2. NERDTree - https://github.com/scrooloose/nerdtree
3. Solarized - http://ethanschoonover.com/solarized

## Installation

Run the following:
```
cd ~
git clone https://github.com/LyndonDev/.vim.git
ln -s ~/.vim/.vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update
```   
Optional: Create the folder `~/.vim/undodir/` to enable persistent undos

## Updates

All plug-ins are managed via git submodules

Run the following to update them all:
```
cd ~/.vim
git submodule foreach git pull origin master
```
