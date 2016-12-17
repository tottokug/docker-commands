FROM busybox

COPY docker-tag-search.sh /docker-tag-search
COPY jq-linux64 /usr/bin/jq
COPY wget-1.9.tar.gz /usr/local/src/wget-1.9.tar.gz

RUN mkdir -p /usr/local/src ; cd /usr/local/src/ ; tar zxf wget-1.9.tar.gz \
  && chmod +x /docker-tag-search && chmod +x /usr/bin/jq 
#ENTRYPOINT ["/docker-tag-search"]
#CMD ["-h"]
