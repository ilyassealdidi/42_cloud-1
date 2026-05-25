FROM debian:oldstable

RUN <<EOF
    apt-get update
    apt-get install -y mariadb-server
    rm -rf /var/lib/apt/lists/*
    mkdir /run/mysqld/
    touch /run/mariadbd.pid
    chown -R mysql:mysql /run/mysqld /run/mariadbd.pid
EOF

COPY --chmod=755 ./tools/init.sh /

ENTRYPOINT ["/init.sh"]
