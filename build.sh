# !/bin/bash

set -e

if [ -z "$REPO_ROOT" ]; then
    echo "Please run setup_environment.sh!"
    exit 1
fi

mkdir -p $REPO_ROOT/build
cd $REPO_ROOT/build
cmake .. -DBUILD_WEBRTC_SAMPLES=ON

cmake --build .

cd -