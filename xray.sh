#!/bin/sh
if [ ! -f UUID ]; then
  UUID="ac400ba0-016a-4d03-992b-40f8b91ab669"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

