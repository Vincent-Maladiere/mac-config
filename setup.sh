/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install python
brew unlink python && brew link python
cp -r sourced/ $HOME/.sourced
echo "for i in $HOME/.sourced/*" >> ~/.zshrc
echo "do" >> ~/.zshrc
echo "    . \$i" >> ~/.zshrc
echo "done" >> ~/.zshrc
sh brew.sh
sh git.sh
