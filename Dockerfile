from steamcmd/steamcmd:ubuntu-22

run steamcmd +login anonymous +app_update 380870 validate +quit

workdir "/root/Steam/steamapps/common/Project Zomboid Dedicated Server/"

cmd ["sh", "-c", "start-server.sh"]