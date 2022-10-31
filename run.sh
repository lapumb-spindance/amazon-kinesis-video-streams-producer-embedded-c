# !/bin/bash

set -e

if [ -z "$REPO_ROOT" ]; then
    echo "Please run setup_environment.sh!"
    exit 1
fi

cd $REPO_ROOT/build
./bin/kvs_with_webrtc $@

cd -