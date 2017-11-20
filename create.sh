#!/bin/bash

rm -rf ./dist

mkdir -p ./sign
mkdir -p ./private
mkdir -p ./public

for f in $(find ./sign -type f | grep -v '\.sig$'); do
   echo "Signing $f to ${f}.sig"
   echo "Signature can be verified with \"gpg --verify ${f}.sig $f\""
   gpg --yes --output "${f}.sig" --detach-sig $f
done

mkdir ./dist

tar -czf ./dist/payload.tgz -C public . -C ../private . -C ../sign . && \
  cat pass | gpg --batch --passphrase-fd 0 --symmetric ./dist/payload.tgz && \
  rm ./dist/payload.tgz && \
  gpg --output "./dist/payload.tgz.gpg.sig" --detach-sig ./dist/payload.tgz.gpg && \
  echo "File to distribute is at ./dist/payload.tgz.gpg with detached signature at ./dist/payload.tgz.gpg.sig"

