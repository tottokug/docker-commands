FROM alpine
MAINTAINER Ryuichi Tokugami

COPY wkhtmltox/bin/wkhtmltopdf /usr/bin/wkhtmltopdf
COPY wkhtmltox/lib/ /usr/lib/
COPY wkhtmltox/include/ /usr/include 
#RUN chmod +x /usr/bin/test.sh
apk add --update fontconfig
WORKDIR /data
#ENTRYPOINT ["/usr/local/bin/wkhtmltopdf"]
#CMD ["-h"]