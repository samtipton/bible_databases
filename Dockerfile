FROM mariadb:10.5

ENV MARIADB_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=bible

COPY ./sql /docker-entrypoint-initdb.d

RUN cp -r /var/lib/mysql /var/lib/mysql-no-volume

CMD ["--datadir", "/var/lib/mysql-no-volume"]

