#!/bin/bash

echo $0

# To be moved
files=($0 .git .gitattributes icon.png README)

tmp_dir=$(mktemp -d -t pack-XXX)
echo "Tempdir is $tmp_dir"
for i in "${files[@]}"
do
	echo "* Moving $i to $tmp_dir"
	mv $i $tmp_dir
done

echo "Packing..."
choco.exe pack
mv *.nupkg ../

for i in "${files[@]}"
do
	echo "* Moving $i back"
	mv "$tmp_dir/$i" .
done
rm -r $tmp_dir
