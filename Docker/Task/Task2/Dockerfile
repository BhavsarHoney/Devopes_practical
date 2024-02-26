FROM  mysql:latest

ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_DATABASE=project_db
ENV MYSQL_USER=project_user
ENV MYSQL_PASSWORD=project_password

RUN mkdir -p /var/lib/mysql_data

WORKDIR /var/lib/mysql_data

VOLUME /var/lib/mysql_data

EXPOSE  3306

COPY init.sql /docker-entrypoint-initdb.d/

CMD [ "mysqld" ]
