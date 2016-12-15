FROM busybox

COPY docker-search.sh /docker-search
RUN chmod +x /docker-search 
ENDPOINT ["/docker-search"]
CMD ["-h"]