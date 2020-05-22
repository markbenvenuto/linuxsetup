
# Delta https://github.com/dandavison/delta
#

cd /tmp

curl -L -O https://github.com/dandavison/delta/releases/download/0.1.1/delta-0.1.1-x86_64-unknown-linux-gnu.tar.gz

tar -zxvf delta-0.1.1-x86_64-unknown-linux-gnu.tar.gz delta-0.1.1-x86_64-unknown-linux-gnu/delta

mv /tmp/delta-0.1.1-x86_64-unknown-linux-gnu/delta $HOME/bin