
# PPA for neovim since 18.04 is so old
# https://launchpad.net/~neovim-ppa/+archive/ubuntu/unstable
#

sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt-get update

sudo apt-get install -y neovim

