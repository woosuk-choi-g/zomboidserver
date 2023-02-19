from steamcmd/steamcmd:ubuntu-22

run steamcmd +login anonymous +app_update 380870 validate +quit

workdir "/root/Steam/steamapps/common/Project Zomboid Dedicated Server/"

entrypoint ["/bin/sh", "-c", "./start-server.sh"]

label org.opencontainers.image.source = "https://github.com/woosuk-choi-g/zomboidserver"