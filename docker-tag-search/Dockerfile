FROM commands/base

COPY docker-tag-search.sh /docker-tag-search
COPY jq-linux64 /usr/bin/jq
RUN chmod +x /docker-tag-search /usr/bin/jq
ENTRYPOINT ["/docker-tag-search"]
CMD ["-h"]