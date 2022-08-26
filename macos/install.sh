if test ! "$(uname)" = "Darwin"
  then
  exit 0
fi

# The Brewfile handles Homebrew-based app and library installs, but there may
# still be updates and installables in the Mac App Store. There's a nifty
# command line interface to it that we can use to just install everything, so
# yeah, let's do that.

echo "› sudo softwareupdate -i -a"
sudo softwareupdate -i -a

### Install applications not available via brew cask
mas install 497799835 # XCode
mas install 441258766 # Magnet window manager
mas install 1191449274 # tooth fairy bluetooth utility
mas install 1381004916 # Discovery (bonjour browser)
mas install 1351639930 # Gifski
mas install 1510445899 # Meeter
