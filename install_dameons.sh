
#/bin/bash

# Setup postgres
repo="https://github.com/postgres/postgres.git"
branch="REL_9_5_STABLE"
git clone -b "REL_9_5_STABLE" "https://github.com/postgres/postgres.git"
cd postgres/postgres
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

