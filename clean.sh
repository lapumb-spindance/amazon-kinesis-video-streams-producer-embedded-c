# !/bin/bash

set -e

if [ -z "$REPO_ROOT" ]; then
    echo "Please run setup_environment.sh!"
    exit 1
fi

rm -rf $REPO_ROOT/build/