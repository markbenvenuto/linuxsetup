
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


sudo apt-get install -y zsh

# Avoid prompts by setting these env options
RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


sed -i 's/plugins=(git)/plugins=(git cargo docker python ubuntu debian)/g' $HOME/.zshrc

# Change shell
if [ "$TEST_IN_DOCKER" -ne 1 ]; then
    sudo chsh -s /bin/zsh ubuntu
fi

cat $DIR/../data/zsh/.zshrc.append >> $HOME/.zshrc
