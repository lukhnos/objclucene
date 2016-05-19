#!/bin/bash -e

# TODO: Parameterize, error checking, temp file, etc.
VERSION=1.0.2
FILE=j2objc-$VERSION.zip
URL=https://github.com/google/j2objc/releases/download/$VERSION/$FILE
#URL=https://github.com/lukhnos/j2objc/releases/download/$VERSION/$FILE
DIR=j2objc-$VERSION
TARGET=j2objc

echo Fetching ${URL}
curl -L -o "${FILE}" "${URL}"

echo Unzipping ${FILE}
unzip "${FILE}"

echo Moving ${FILE} archive to ${DIR}
mv "${FILE}" "${DIR}"

echo Moving ${DIR} to ${TARGET}
mv "${DIR}" "vendor/${TARGET}"
