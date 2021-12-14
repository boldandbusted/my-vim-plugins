# my-vim-plugins

The good, the bad, and the ugly.

This is mostly a rebundling of Vim plugins via git submodules.

## Prerequisites

* Python 3
* git

## Quickstart

To use this repo, do something like the following:

```shell
mkdir -p ~/.vim/pack/my-plugins/
cd ~/.vim/pack/my-plugins/
git clone --recurse-submodules --init <this repo URI> start
```

Some plugins require post-update tasks, like YouCompleteMe:

```shell
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

## Tips and tricks

"(Untracked content)" or "(modified)" git submodule status got you down? Try this:

In each directory showing the above statuses:
```shell
cd <submodule directory>
git reset --hard HEAD
git clean -fxd
cd ../
```

And repeat for each relevant git submodule directory.

(Source: https://stackoverflow.com/a/18839908/2808798 )

## Maintaining (behind the scenes)

* To update all the modules, I'm generally doing this monstrosity:

```shell
git submodule update --remote --merge
git commit -m "Yay, let's update!"
git push
```

### Thanks for all the good code!

I welcome suggestions or doc PRs. :)
