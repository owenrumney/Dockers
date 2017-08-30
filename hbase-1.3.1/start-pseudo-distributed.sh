#!/bin/bash

/opt/hbase/bin/hbase zookeeper > logzoo.log 2>&1 &
/opt/hbase/bin/hbase regionserver start > logregion.log 2>&1 &
/opt/hbase/bin/hbase thrift start > logthrift.log 2>&1 &
/opt/hbase/bin/hbase master start --localRegionServers=0 > logmaster.log 2>&1 
