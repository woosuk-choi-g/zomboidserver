#!/bin/sh
echo DIR=\"/root/Steam/steamapps/common/Project Zomboid Dedicated Server\"
DIR="/root/Steam/steamapps/common/Project Zomboid Dedicated Server"

echo steamcmd +login anonymous +app_update 380870 validate +quit
steamcmd +login anonymous +app_update 380870 validate +quit

echo sed -i \"s/-Xmx8g/-Xmx$Xmx/\" \"$DIR/ProjectZomboid64.json\"
sed -i -r "s/\"-Xmx.*\"/\"-Xmx$Xmx\"/" "$DIR/ProjectZomboid64.json"

echo cat \"$DIR/ProjectZomboid64.json\"
cat "$DIR/ProjectZomboid64.json"

echo cd \"$DIR\"
cd "$DIR"

echo sh ./start-server.sh
sh ./start-server.sh