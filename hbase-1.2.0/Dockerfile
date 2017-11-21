FROM centos:7
MAINTAINER Owen Rumney <owen.rumney@gmail.com>

RUN yum install -y java-1.8.0-openjdk.x86_64
ENV JAVA_HOME=/usr/lib/jvm/jre
ENV HBASE_HOME=/opt/hbase-1.2.0
ENV JAVA_LIBRARY_PATH   $HBASE_HOME/lib/native

RUN yum install -y wget
RUN yum install -y nc
RUN yum install -y tar
RUN yum install -y snappy

RUN mkdir /hbase-setup
WORKDIR /hbase-setup

ADD ./install-hbase.sh /hbase-setup/
RUN ./install-hbase.sh

RUN /opt/hbase/bin/hbase-config.sh

ADD hbase-site.xml /opt/hbase/conf/hbase-site.xml
ADD start-pseudo-distributed.sh /opt/hbase/bin/start-pseudo-distributed.sh

# Zookeeper
EXPOSE 2181
# HBase Master API port
EXPOSE 60000
# HBase Master Web UI
EXPOSE 60010
# Regionserver API port
EXPOSE 60020
# HBase Regionserver web UI
EXPOSE 60030
# Thrift endpoint
EXPOSE 9090

WORKDIR /opt/hbase/bin

ENV PATH=$PATH:/opt/hbase/bin

CMD /opt/hbase/bin/start-pseudo-distributed.sh
