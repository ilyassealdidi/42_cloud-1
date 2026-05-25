FROM debian:oldstable

RUN <<EOF
    apt update -y
    apt install -y curl php php-mysql php-fpm mariadb-client
    rm -rf /var/lib/apt/lists/*
    curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x /usr/local/bin/wp
EOF

COPY --chmod=755 ./tools/init.sh /

WORKDIR /var/www/html

ENTRYPOINT [ "/init.sh" ]