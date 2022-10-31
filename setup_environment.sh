# !/bin/bash

export REPO_ROOT=$(pwd)

export AWS_DEFAULT_REGION=us-east-2
export AWS_KVS_CACERT_PATH=$REPO_ROOT/cert.pem
export AWS_KVS_LOG_LEVEL=2
export DEBUG_LOG_SDP=TRUE

PRIV_ENV_FILE=$REPO_ROOT/setup_environment_priv.sh
if [ -f "$PRIV_ENV_FILE" ]; then
    source $PRIV_ENV_FILE
fi

if [ -z "$AWS_ACCESS_KEY_ID" ] || [ -z "$AWS_SECRET_ACCESS_KEY" ]; then
    echo "Your environment setup is _almost_ complete. Please export your AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY."
    echo "You can optionally create a $PRIV_ENV_FILE (which is git ignored), which is sourced in this script."
fi
