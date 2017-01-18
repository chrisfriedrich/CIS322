# Chris Friedrich - cnf@uoregon.edu - Assignment 1

#!/bin/bash

# Setup postgres
git clone -b "REL9_5_STABLE" "https://github.com/postgres/postgres.git"
cd postgres
./configure --prefix=$1
make
make install

cd ..

# Setup apache
curl http://www-us.apache.org/dist//httpd/httpd-2.4.25.tar.gz > apache-2-4-25.tar.gz 
tar xzf apache-2-4-25.tar.gz
cd httpd-2.4.25
./configure --prefix=$1
make
make install

sed -i '/Listen 80/c\Listen 8080' $1/conf/httpd.conf

# Add binaries to PATH
export PATH=$1/bin:$PATH

# Cleanup - not working

#rm ~/CIS322/apache-2-4-25.tar.gz

