FROM alpine
MAINTAINER Ryuichi Tokugami

COPY wkhtmltopdf /usr/local/src/wkhtmltopdf
COPY patches/ /usr/local/src/

WORKDIR /usr/local/src/wkhtmltopdf/qt
# Qt configure phase
RUN apk add --update make perl g++ linux-headers \
    ca-certificates openssl-dev \
    libx11-dev libxcursor-dev libxext-dev \
    libxfixes-dev libxft-dev \
    libxrandr-dev libxrender-dev python
RUN    patch -p1 <  01.patch 
RUN yes |  ./configure -prefix /usr/local \
    -opensource -release -static -fast -openssl \
    -nomake tools,examples,demos,docs,translations  \
    -qt-libpng -qt-libmng -qt-libjpeg -graphicssystem raster \
    -largefile -rpath \
    -no-opengl -no-dbus -no-multimedia \
    -no-3dnow -no-sse -no-sse2  -qt-zlib -qt-libtiff \
    -no-phonon-backend -webkit -no-scripttools -no-mmx \
    -no-accessibility -no-stl -no-sql-ibase \
    -no-sql-mysql -no-sql-odbc -no-sql-psql -no-sql-sqlite \
    -no-sql-sqlite2 -no-qt3support -no-xmlpatterns \
    -no-phonon -no-nis -no-cups -no-iconv -no-pch -no-gtkstyle \
    -no-nas-sound -no-sm -no-xshape -no-xinerama -no-xcursor \
    -no-xfixes -no-xrandr -no-xrender -no-mitshm -no-xinput -no-xkb \
    -no-glib -no-openvg -no-opengl -no-xsync -no-svg ;

RUN make && make install 

WORKDIR /usr/local/src/wkhtmltopdf
RUN scripts/build.py setup-schroot-generic



RUN wkhtmltopdf
#RUN chmod +x /usr/bin/test.sh
WORKDIR /data
#ENTRYPOINT ["/usr/local/bin/wkhtmltopdf"]
#CMD ["-h"]