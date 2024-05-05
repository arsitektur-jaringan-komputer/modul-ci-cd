#!/bin/bash
set -e

echo "Jobs started ..."

git pull

docker build -t web-coba .

echo "Jobs enddd ..."