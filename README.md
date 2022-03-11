# my-vim-plugins

The good, the bad, and the ugly.

This is mostly a rebundling of Vim plugins via git submodules. (And now a Homebrew Brewfile, see [BONUS ROUND](#BONUSROUND) below).

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

# <a id="BONUSROUND"></a>BONUS ROUND - Homebrew Brewfile
 
## Manage your Mac's software better

So, maybe you love Macs. Or, like me, you are a Linux user, but have the sense to install Homebrew to give your Mac a good package manager that you're used to having in Linux. ;) Homebrew has a nice feature named `bundle`, similar to how Python has 'requirements.txt', such that you can store your installed packages in a file called "Brewfile", and then later use that file to populate the packages on a new machine.

### Quickstart

* Install [Homebrew](https://brew.sh)
* cd to the root of this repo
* `brew bundle install --file=./_homebrew/mac/Brewfile`
* Watch the nice output, or go get a drink or snack.
* Return to find you have the same environment you had before, on a new machine!

### Tips for Homebrew

* Best practice is:
  * Use Homebrew soon after you unpack your new machine.
  * Don't use any other way to install software on your machine after you install with Homebrew

# Maintaining (behind the scenes)

* To update all the modules, I'm generally doing this monstrosity:

```shell
git submodule update --remote --merge
git add -u
git commit -m "Yay, let's update!"
git push
```

# Thanks for all the good code!

I welcome suggestions or doc PRs. :)
