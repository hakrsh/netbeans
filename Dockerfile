FROM anapsix/alpine-java:jdk8
MAINTAINER Harikrishnan U M <harikn77@gmail.com>
ENV HOME /home/netbeans

RUN adduser -D netbeans && \
	  apk update && \
    apk add libxext libxtst libxrender curl && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/*

RUN curl -o netbeans.zip -# -SL https://downloads.apache.org/netbeans/netbeans/12.0/netbeans-12.0-bin.zip && \
    unzip netbeans.zip && rm netbeans.zip

USER netbeans

CMD /netbeans/bin/netbeans
