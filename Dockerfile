ARG VERSION=latest
FROM cloudflare/cloudflared:${VERSION}

COPY config.yml .

EXPOSE 60123

ENTRYPOINT ["cloudflared", "--no-autoupdate"]
CMD ["tunnel", "--config", "./config.yml", "--metrics", "0.0.0.0:60123", "run"]
