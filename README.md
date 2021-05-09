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
git clone --recurse-submodules --init <this repo URI> start
```

Some plugins require post-update tasks, like YouCompleteMe:

```
cd YouCompleteMe
./install.py
```

To configure these plugins, you may also need to add stanzas to your .vimrc. A sample .vimirc will be added to this repo later, and referenced here.

## Updating

When this repo is updated, you can ensure an update to the submodules via:

```
git pull --all --recurse-submodules
git submodule update --remote --init
```
