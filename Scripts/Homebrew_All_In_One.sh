#Homebrew All In One - 01/31/2018
#Automates Homebrew updates, dependancies, cleanup, and doctor

#Checks for latest version of Homebrew
echo "Checking for Homebrew updates..."
brew update

#Checks for latest versions of formulae
echo "Checking for Homebrew formulae updates..."
brew upgrade

#Checks for lastest versions of Cask installs
echo "Checking for Homebrew Cask updates..."
brew cask upgrade

#Checks formulae for dependancies
echo "Checking for missing dependancies..."
brew missing

#Deletes dead symlinks
echo "Removing dead symlinks"
brew prune

#Deletes old versions of formulae and left over files
echo "Cleaning up left over files..."
brew cleanup

#Determines if there is any issues with Homebrew
echo "Checking for any issues..."
brew doctor