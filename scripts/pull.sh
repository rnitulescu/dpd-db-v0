#! /bin/sh

cd ./build/pull

url=https://www.canada.ca/en/health-canada/services/drugs-health-products/drug-products/drug-product-database/what-data-extract-drug-product-database.html

lynx -dump -width 120 $url | \
    sed -e '1,/References/d' | \
    grep '.*allfiles.*\.zip$' | \
	grep -v '\_old\_vieux\.zip$' | \
    xargs wget

cd ../..

