#!/bin/bash

set -o errexit

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo DIR $DIR

BASH=/bin/bash

$BASH $DIR/install/install_zsh.sh

$BASH $DIR/install/install_bin.sh

$BASH $DIR/install/install_dotnet.sh

$BASH $DIR/install/install_ripgrep.sh

$BASH $DIR/install/install_neovim.sh

$BASH $DIR/install/install_evergreen.sh

$BASH $DIR/install/install_repos.sh

$BASH $DIR/install/install_dot_files.sh

# Skip certain steps in docker that require keys
if [ "$TEST_IN_DOCKER" -ne 1 ]; then
    $BASH $DIR/install/install_mongo_repo.sh
fi
