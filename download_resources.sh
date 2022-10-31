# !/bin/bash

set -e

if [ -z "$REPO_ROOT" ]; then
    echo "Please run setup_environment.sh!"
    exit 1
fi

cd $REPO_ROOT

echo "------------------------------------------------------------------"
echo "Downloading KVS cert.pem.."
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1hWv9pC-VjPn8FpIiUdMsp0eSU2LOfHcC' -O cert.pem
echo "Downloading (245) H264 frames.."
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1p9EmjG_9arYxmnQk1nvDVkbR7cNbXl3X' -O h264SampleFrames.zip && unzip h264SampleFrames.zip -d h264SampleFrames
rm -rf h264SampleFrames.zip
echo "Successfully downloaded H264 frames!"
echo "Downloading (300) Opus frames.."
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1h7dDRT6xiCNRNJuPNeyR8m3SmP8yhes0' -O opusSampleFrames.zip && unzip opusSampleFrames.zip -d opusSampleFrames
rm -rf opusSampleFrames.zip
echo "------------------------------------------------------------------"

cd -