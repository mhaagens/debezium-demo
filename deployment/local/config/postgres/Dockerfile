FROM postgres:latest
LABEL maintainer="martin.haagensli@gmail.com"

ADD ./001-create-uuid-extension.sh /docker-entrypoint-initdb.d/
RUN chmod 755 /docker-entrypoint-initdb.d/001-create-uuid-extension.sh