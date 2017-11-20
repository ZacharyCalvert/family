#!/bin/bash

rm -rf ./dist/unpacked
mkdir -p ./dist/unpacked

pushd ./dist > /dev/null

for f in $(find ./ -type f | grep '\.gpg$'); do
    TO_FILE=${f%.*}
    cat ../pass | gpg --batch -q --output $TO_FILE --passphrase-fd 0 --decrypt $f > /dev/null
    tar -xzf $TO_FILE -C ./unpacked
    rm $TO_FILE
done
popd > /dev/null
echo "All files unpacked to ./dist/unpacked"
