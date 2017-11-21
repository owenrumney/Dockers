#! /bin/bash

wget --quiet http://archive.apache.org/dist/hbase/1.2.0/hbase-1.2.0-bin.tar.gz
tar xzf hbase-1.2.0-bin.tar.gz -C /opt/
ln -s /opt/hbase-1.2.0 /opt/hbase
rm hbase-1.2.0-bin.tar.gz

# install the snappy libraries
wget --quiet http://archive.apache.org/dist/hadoop/common/hadoop-2.7.1/hadoop-2.7.1.tar.gz
tar -zxf hadoop-2.7.1.tar.gz -C /tmp
mv /tmp/hadoop-2.7.1/lib/* $HBASE_HOME/lib/
