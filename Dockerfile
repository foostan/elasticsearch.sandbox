FROM java:8

MAINTAINER foostan ks@fstn.jp

WORKDIR /opt
RUN wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.5.0.tar.gz
RUN tar -xvf elasticsearch-1.5.0.tar.gz

WORKDIR /opt/elasticsearch-1.5.0

#ENV ES_HEAP_SIZE 256m

EXPOSE 9200 9300
ENTRYPOINT bin/elasticsearch
