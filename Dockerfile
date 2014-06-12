FROM quintenk/jdk-oracle:7

MAINTAINER Jun Matsushita "https://github.com/iilab"

RUN git clone https://github.com/structr/structr.git /var/lib/structr && cd /var/lib/structr && mvn clean install -DskipTests

EXPOSE 8082
ADD structr.conf /var/lib/structr/structr-ui/