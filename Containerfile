FROM registry.access.redhat.com/hi/mariadb:11

# needed for initialization
# hi/mariadb:11 uses MARIADB_* variables (upstream MariaDB Docker convention)
ENV MARIADB_USER=user
ENV MARIADB_PASSWORD=pass
ENV MARIADB_DATABASE=qod
ENV MARIADB_ROOT_PASSWORD=supersecret

# Copy SQL init scripts directly into the standard Docker init directory.
COPY sql/ /docker-entrypoint-initdb.d/

EXPOSE 3306
