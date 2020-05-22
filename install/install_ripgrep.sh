
# RipGrep https://github.com/BurntSushi/ripgrep
#

cd /tmp

curl -L -O https://github.com/BurntSushi/ripgrep/releases/download/12.1.0/ripgrep-12.1.0-x86_64-unknown-linux-musl.tar.gz 

tar -zxvf ripgrep-12.1.0-x86_64-unknown-linux-musl.tar.gz ripgrep-12.1.0-x86_64-unknown-linux-musl/rg

mv /tmp/ripgrep-12.1.0-x86_64-unknown-linux-musl/rg $HOME/bin

