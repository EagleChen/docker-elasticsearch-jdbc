FROM java:8-jre
MAINTAINER Eagle Chen <chygr1234@gmail.com>

ENV VERSION=2.1.1.2

RUN \
  cd /tmp && \
  wget http://xbib.org/repository/org/xbib/elasticsearch/importer/elasticsearch-jdbc/$VERSION/elasticsearch-jdbc-$VERSION-dist.zip && \
  unzip elasticsearch-jdbc-$VERSION-dist.zip && \
  mv elasticsearch-jdbc-$VERSION /elasticsearch-jdbc && \
  rm /tmp/elasticsearch-jdbc-$VERSION-dist.zip

COPY sqljdbc42.jar /elasticsearch-jdbc/lib/
COPY docker-entrypoint.sh /

ENTRYPOINT ["docker-entrypoint.sh"]
