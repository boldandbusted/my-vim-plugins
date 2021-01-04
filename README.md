# my-vim-plugins

The good, the bad, and the ugly.

This is mostly a rebundling of Vim plugins via git submodules.

## Prerequisites

* Python 3
* git

## Quickstart

To use this repo, do something like the following:

```
mkdir -p ~/.vim/pack/my-plugins/
cd ~/.vim/pack/my-plugins/
git clone --recurse-submodules <this repo URI> start
cd YouCompleteMe
./install.py
```

You may also need to add stanzas to your .vimrc. A sample .vimirc will be added to this repo later, and referenced here.
