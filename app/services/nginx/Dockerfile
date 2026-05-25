FROM debian:oldstable

RUN <<EOF
    apt update
    apt install -y nginx openssl
    rm -rf /var/lib/apt/lists/*
EOF

COPY --chmod=755 ./tools/script.sh /script.sh

ENTRYPOINT [ "/script.sh" ]