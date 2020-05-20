mkdir $HOME/bin
mkdir $HOME/tmp

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cp $DIR/../data/bin/* $HOME/bin