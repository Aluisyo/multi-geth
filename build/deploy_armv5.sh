#!/usr/bin/env bash

GOPATH=~/go_arm
GETH_ARCHIVE_NAME="multi-geth-armv5"
zip -j "$GETH_ARCHIVE_NAME.zip" build/bin/geth

shasum -a 256 $GETH_ARCHIVE_NAME.zip
shasum -a 256 $GETH_ARCHIVE_NAME.zip > $GETH_ARCHIVE_NAME.zip.sha256

ALLTOOLS_ARCHIVE_NAME="multi-geth-alltools-armv5"
zip -j "$ALLTOOLS_ARCHIVE_NAME.zip" build/bin/*

shasum -a 256 $ALLTOOLS_ARCHIVE_NAME.zip
shasum -a 256 $ALLTOOLS_ARCHIVE_NAME.zip > $ALLTOOLS_ARCHIVE_NAME.zip.sha256
