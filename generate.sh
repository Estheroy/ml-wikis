#!/bin/bash
basePath="$(pwd)"

#clean dist files
rm -rf "$basePath/dist/*"

#copy wikis
cp -R "$basePath/wikis" "$basePath/dist"

#build each gitbook
for dir in $basePath/dist/wikis/*;
do
    [ -d $dir ] && cd "$dir" && gitbook install ./ && gitbook build
done

#reconstruct the folder
src=$basePath/dist/wikis
dest=$basePath/dist

cd "$basePath/dist/wikis/"
for dir in *;
do
    cp -R "$src/$dir/_book/." "$dest/$dir"
done
rm -rf "$dest/wikis"

# cd "$basePath"
