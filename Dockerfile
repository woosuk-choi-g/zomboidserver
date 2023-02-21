from steamcmd/steamcmd:ubuntu-22

workdir /app

copy start.sh .

entrypoint ["/bin/sh", "-c", "./start.sh"]

label org.opencontainers.image.source = "https://github.com/woosuk-choi-g/zomboidserver"