# Install Caskroom

brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

#Enable fronts to be installed through brew
brew tap caskroom/fonts 

# Install packages

apps=(
    a-better-finder-rename
    adobe-photoshop-cc
    alfred
    dash
    dropbox
    epic-games-launcher
    evernote
    flux
    github-desktop
    glimmerblocker
    google-drive
    kaleidoscope
    kismac
    macdown
    p4v
    p4merge
    pycharm-ce
    qt-creator
    screenflow
    sourcetree
    spotify
    sublime-text3
    torbrowser
    tunnelbear
    transmit
    transmission
    unrarx
    virtualbox
    vlc
    webstorm
)

brew cask install "${apps[@]}"

#link apps so they can be opened with alfred
brew cask alfred link

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package && qlmanage -r
