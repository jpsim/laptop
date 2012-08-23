# Laptop.sh

## This is a work in progress, use this at your own risk

This is very specific to my case, I'll generalize it eventually (or not).

## What does this do?

This script takes a fresh Mountain Lion install and turns it into a well-equipped development machine.

Among other things, it installs the following:
 
* Xcode
* Xcode CLT
* SSH Keys
* System defaults
* zsh
* Homebrew
* Git
* RVM
* Ruby
* Rails
* Mergetool
* Heroku Toolbelt
* Chrome
* Sublime Text 2
* Unarchiver
* Quicksilver
* iStat Menus

## Running & Requirements

You'll need an `apps/` directory with the following contents:

* apps/
	* chrome.dmg
	* iStat Menus.app
	* quicksilver.dmg
	* sublime.dmg
	* The Unarchiver.app
	* xcode_cli.dmg _(10.8 Edition)_
	* xcode.dmg _(v4.5 DP4)_

To run this script, `cd` to yours `apps/` directory mentioned above and run:

`curl -L https://raw.github.com/jpsim/laptop/master/laptop.sh | sh`

## Credits

This script was heavily inspired (and uses) the following amazing projects:

* https://github.com/mathiasbynens/dotfiles/blob/master/.osx
* https://github.com/thoughtbot/laptop
* https://github.com/ts310/setup-new-mac
* https://github.com/ptb/Mac-OS-X-Lion-Setup
* https://github.com/geetarista/mac-setup

## TODO

* Install more apps
	* Eclipse & ADT
	* Adobe CS6
	* Transmit
	* VMWare Fusion
* Configure all apps
	* Set Chrome as default browser
	* Set Sublime Text as git commit editor
	* Set Mergetool and github username, etc.
	* More
* Organize Dock apps
* Software Update
* Automatically register apps