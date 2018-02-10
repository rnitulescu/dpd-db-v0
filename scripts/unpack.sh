#! /bin/sh
cd build/pull

for i in *zip
do
	unzip "$i"
done

rm *.zip

cd ../..

