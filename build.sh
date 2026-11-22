#!/bin/bash
set -e
APP_NAME=${APP_NAME:-day1-app}
echo "Building $APP_NAME ..."
rm -rf dist && mkdir -p dist
cp index.html dist/
{
 echo "app=$APP_NAME"
 echo "build=${BUILD_NUMBER:-local}"
 echo "commit=$(git rev-parse --short HEAD 2>/dev/null || echo none)"
 echo "built_at=$(date)"
} > dist/build-info.txt
echo "Build c
