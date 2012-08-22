#!/bin/bash
read -p "Password: " sudo_pass

hdiutil mount -noverify ../apps/xcode_cli.dmg
echo "Installing Xcode Command Line Tools"
echo $sudo_pass | sudo -S installer -verbose -package "/Volumes/Command Line Tools (Mountain Lion)/Command Line Tools (Mountain Lion).mpkg" -target /
umount "/Volumes/Command Line Tools (Mountain Lion)"
echo "Finished installing Xcode Command Line Tools"

hdiutil mount -noverify ../apps/xcode.dmg
echo "Installing Xcode 4.5 DP4"
echo $sudo_pass | sudo -S cp -R "/Volumes/Xcode 4.5 DP4/Xcode45-DP4.app" /Applications
umount "/Volumes/Xcode 4.5 DP4"
echo "Finished installing Xcode 4.5 DP4"

hdiutil mount -noverify ../apps/chrome.dmg
echo "Installing Google Chrome"
echo $sudo_pass | sudo -S cp -R "/Volumes/Google Chrome/Google Chrome.app" /Applications
umount "/Volumes/Google Chrome"
echo "Finished installing Google Chrome"

hdiutil mount -noverify ../apps/sublime.dmg
echo "Installing Sublime Text 2"
echo $sudo_pass | sudo -S cp -R "/Volumes/Sublime Text 2/Sublime Text 2.app" /Applications
umount "/Volumes/Sublime Text 2"
echo "Finished installing Sublime Text 2"

hdiutil mount -noverify ../apps/quicksilver.dmg
echo "Installing Quicksilver"
echo $sudo_pass | sudo -S cp -R "/Volumes/Quicksilver/Quicksilver.app" /Applications
umount "/Volumes/Quicksilver"
echo "Finished installing Quicksilver"

echo "Installing The Unarchiver"
echo $sudo_pass | sudo -S cp -R "../apps/The Unarchiver.app" /Applications
echo "Finished installing The Unarchiver"

echo "Installing iStat Menus"
echo $sudo_pass | sudo -S cp -R "../apps/iStat Menus.app" /Applications
echo "Finished installing iStat Menus"

echo "Checking for SSH key, generating one if it doesn't exist ..."
[[ -f ~/.ssh/id_rsa.pub ]] || ssh-keygen -t rsa

echo "Installing system defaults"
curl -L https://raw.github.com/mathiasbynens/dotfiles/master/.osx | sh
echo "Finished installing system defaults"

echo "Installing ZSH"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
echo "Finished installing ZSH"

# Install Ack, Bundler, Foreman, Heroku, Homebrew, ImageMagick, Postgres, Rails, Ruby 1.9.3, RVM & Tmux
# zsh < <(curl -s https://raw.github.com/thoughtbot/laptop/master/mac)