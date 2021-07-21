FROM mysql:8

ADD ./schema/sql-mode.cnf /etc/mysql/conf.d/sql-mode.cnf
ADD ./schema /docker-entrypoint-initdb.d

CMD ["mysqld"]