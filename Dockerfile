FROM java:8

MAINTAINER foostan ks@fstn.jp

WORKDIR /opt
RUN wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.5.0.tar.gz
RUN tar -xvf elasticsearch-1.5.0.tar.gz && ln -s /opt/elasticsearch-1.5.0 /opt/elasticsearch
RUN rm /opt/elasticsearch/config/elasticsearch.yml
ADD elasticsearch.yml /opt/elasticsearch/config/elasticsearch.yml

WORKDIR /opt/elasticsearch

EXPOSE 9200 9300
ENTRYPOINT bin/elasticsearch
