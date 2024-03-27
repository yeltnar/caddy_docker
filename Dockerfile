FROM caddy:builder AS builder

RUN caddy-builder \
    github.com/caddy-dns/google-domains

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
