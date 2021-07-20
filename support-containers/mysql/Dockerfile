FROM mysql:8

ADD ./schemas/sql-mode.cnf /etc/mysql/conf.d/sql-mode.cnf
ADD ./schemas /docker-entrypoint-initdb.d

CMD ["mysqld"]