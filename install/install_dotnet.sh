# Install dotnet

# See https://docs.microsoft.com/en-us/dotnet/core/install/linux-package-manager-ubuntu-1804
curl -L https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb --output packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb


sudo add-apt-repository universe
sudo apt-get update -y
sudo apt-get install -y apt-transport-https
sudo apt-get update -y
sudo apt-get install -y dotnet-sdk-3.1
