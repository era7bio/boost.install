#!/bin/sh
set -e -x

# installer for boost
#
# create your base folder
mkdir -p /opt/boost
cd /opt/boost
# do the work
wget http://sourceforge.net/projects/boost/files/boost/1.53.0/boost_1_53_0.tar.gz/download
tar -xzf boost_1_53_0.tar.gz
cd boost_1_53_0
./bootstrap.sh --with-libraries=all
./b2 link=static runtime-link=static install