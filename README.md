## Applications

* 1Password
* Adium
* Arq
* Audacity
* Boom
* Boxer
* CodeKit
* ColorSnapper
* Dropbox
* Firefox
* Gas Mask
* Google Chrome
* Google Chrome Canary
* HandBrake
* HipChat
* iTerm2
* Mou
* ScreenFlow
* Sequel Pro
* Sketch
* Skype
* Snapplr
* Spotify
* Steam
* Sublime Text 2
  * CSScomb
  * Package Control
  * Theme - Soda
  * LESS
  * EditorConfig
* The Unarchiver
* TotalFinder
* Transmission
* Transmit
* Vagrant
* VirtualBox
  * [modern.IE](http://www.modern.ie/en-us/virtualization-tools)
* VLC
* Xcode

## Terminal

* Homebrew
  * ack
  * android-sdk 
  * [dnsmasq](http://www.echoditto.com/blog/never-touch-your-local-etchosts-file-os-x-again)
  * mysql
  * node
  * optipng
  * phantomjs
  * rbenv
  * ruby-build
  * wget
* npm (global)
  * bower 
  * grunt-cli
  * jshint
  * svgo
  * uglifyjs
  * yo
* oh-my-zsh

## Sensible OS X Defaults

```sh
# https://github.com/mathiasbynens/dotfiles/blob/master/.osx

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "bword"
sudo scutil --set HostName "bword"
sudo scutil --set LocalHostName "bword"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "bword"

# Restart automatically if the computer freezes
systemsetup -setrestartfreeze on

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Disable disk image verification
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Disable the Genius sidebar in iTunes
defaults write com.apple.iTunes disableGeniusSidebar -bool true

# Disable the Ping sidebar in iTunes
defaults write com.apple.iTunes disablePingSidebar -bool true

# Disable all the other Ping stuff in iTunes
defaults write com.apple.iTunes disablePing -bool true

# Disable radio stations in iTunes
defaults write com.apple.iTunes disableRadio -bool true

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Disable local Time Machine backups
hash tmutil &> /dev/null && sudo tmutil disablelocal
```
