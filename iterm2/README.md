This file explains how to setup iterm2

# Install iterm2

1) Use the script to install iterm2
./install_iterm2.sh

2) Check zsh is the default shell

3) Install gruvbox colors

4) Install oh my zsh

in the home directory type the following command

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

5) Install some nerd fonts

Use the script for that

6) Install powerlevel10k

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

7) Install zsh-syntax-highlighting

1) Clone this repository in oh-my-zsh's plugins directory:

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

2) Activate the plugin in ~/.zshrc:

plugins=( [plugins...] zsh-syntax-highlighting)

8) Install zsh-autosuggestions

In the plugins folder

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

plugins=( [plugins...] zsh-autosuggestions)

