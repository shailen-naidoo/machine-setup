# Install Homebrew Package Manager for MacOS
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/shailennaidoo/.zprofile
   eval "$(/opt/homebrew/bin/brew shellenv)"

# Install required applications
brew install git
brew install nvm

echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm' >> ~/.zshrc
echo '[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion' >> ~/.zshrc

source ~/.zshrc

nvm install --lts
nvm use --lts

# Setup for Git
git config --global user.name "Shailen Naidoo"
git config --global user.email "naidooshailen648@gmail.com"
