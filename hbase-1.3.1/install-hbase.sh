#! /bin/bash

wget --quiet http://archive.apache.org/dist/hbase/1.3.1/hbase-1.3.1-bin.tar.gz
tar xzf hbase-1.3.1-bin.tar.gz -C /opt/
ln -s /opt/hbase-1.3.1 /opt/hbase
rm hbase-1.3.1-bin.tar.gz
