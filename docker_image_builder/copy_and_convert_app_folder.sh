#!/usr/bin/env bash

# To avoid Windows mounted file problems. Mounting automatically changes sometimes the CR/RF line endings and the chmod of the file.
rm -fr /app-copy
cp -r /app /app-copy
find /app-copy -type f -print0 | xargs -0 dos2unix

